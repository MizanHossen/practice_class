import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Class21 extends StatefulWidget {
  const Class21({super.key});

  @override
  State<Class21> createState() => _Class21State();
}

class _Class21State extends State<Class21> {
  TextEditingController titleController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  final FirebaseFirestore firestore = FirebaseFirestore.instance;
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    void savePost() async {
      if (descriptionController.text.isEmpty ||
          titleController.toString().isEmpty) {
        print("Please provide all info");
      } else {
        setState(() {
          isLoading = true;
        });

        try {
          String postId = DateTime.now().millisecondsSinceEpoch.toString();
          await firestore.collection("Note").doc(postId).set({
            "title": titleController.text.trim(),
            "description": descriptionController.text.trim(),
            "postId": postId,
          });

          titleController.clear();
          descriptionController.clear();

          print("Success");
          // ignore: use_build_context_synchronously
        } catch (e) {
          print(e);
        } finally {
          setState(() {
            isLoading = false;
          });
        }
      }
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Note App",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.amber,
        elevation: 20,
      ),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextFormField(
                  controller: titleController,
                  cursorColor: Colors.amber,
                  decoration: InputDecoration(
                    hintText: "Title",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  padding: const EdgeInsets.all(10).copyWith(top: 0),
                  height: 170,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(20)),
                  width: MediaQuery.of(context).size.width,
                  child: Center(
                    child: TextField(
                      cursorColor: Colors.amber,
                      expands: true,
                      minLines: null,
                      maxLines: null,
                      //maxLength: 200,
                      keyboardType: TextInputType.multiline,
                      controller: descriptionController,
                      decoration: const InputDecoration(
                        counterText: "",
                        border: InputBorder.none,
                        hintText: 'Whst’s on your mind?',
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Align(
                  alignment: Alignment.center,
                  child: SizedBox(
                    height: 50,
                    child: ElevatedButton(
                      onPressed: savePost,
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.amber),
                      ),
                      child: isLoading == true
                          ? const CircularProgressIndicator(color: Colors.white)
                          : const Text(
                              "Save Data",
                              style: TextStyle(color: Colors.white),
                            ),
                    ),
                  ),
                ),
                const SizedBox(height: 40),
                const Text(
                  "All Note's",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 20),
                Expanded(
                  child: StreamBuilder(
                    stream: firestore
                        .collection("Note")
                        // .orderBy("datePublished", descending: true)
                        .snapshots(),
                    builder: (context,
                        AsyncSnapshot<QuerySnapshot<Map<String, dynamic>>>
                            snapshot) {
                      if (snapshot.connectionState == ConnectionState.waiting) {
                        return const Center(
                          child: CircularProgressIndicator(color: Colors.amber),
                        );
                      }

                      return ListView.builder(
                        shrinkWrap: true,
                        physics: const BouncingScrollPhysics(),
                        itemCount: snapshot.data!.docs.length,
                        itemBuilder: (context, index) => Container(
                          padding: const EdgeInsets.all(10),
                          margin: const EdgeInsets.only(bottom: 10),
                          decoration: BoxDecoration(
                            color: Colors.amber,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Row(
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      snapshot.data!.docs[index]["title"]
                                          .toString(),
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: const TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    Text(
                                      snapshot.data!.docs[index]["description"]
                                          .toString(),
                                      maxLines: 3,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ],
                                ),
                              ),
                              Row(
                                children: [
                                  InkWell(
                                      onTap: () {
                                        showModalBottomSheet(
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(20)),
                                          backgroundColor: Colors.transparent,
                                          isScrollControlled: true,
                                          context: context,
                                          builder: (BuildContext context) {
                                            return Container(
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  0.7,
                                              decoration: const BoxDecoration(
                                                color: Colors.white,
                                                borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(20),
                                                  topRight: Radius.circular(20),
                                                ),
                                              ),
                                            );
                                          },
                                        );
                                      },
                                      child: const Icon(Icons.edit)),
                                  IconButton(
                                    onPressed: () async {
                                      try {
                                        await firestore
                                            .collection("Note")
                                            .doc(
                                              snapshot
                                                  .data!.docs[index]["postId"]
                                                  .toString(),
                                            )
                                            .delete();
                                      } catch (e) {
                                        print(e.toString());
                                      }
                                    },
                                    icon: const Icon(Icons.delete),
                                    color: Colors.black,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
