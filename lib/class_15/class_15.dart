import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:http/http.dart' as http;
import 'package:practice_class/model/user_model.dart';

class Class15 extends StatefulWidget {
  const Class15({Key? key}) : super(key: key);

  @override
  State<Class15> createState() => _Class15State();
}

class _Class15State extends State<Class15> {
  var allData = "No Data";
  bool isLoading = false;

  List<UserDataModel> userData = [];

  Future<void> updateData() async {
    setState(() {
      isLoading = true;
    });

    Dio dio = Dio();

    var response = await dio.get("https://jsonplaceholder.typicode.com/posts");

    if (response.statusCode == 200) {
      var allData = response.data;

      List<dynamic> dataList = allData as List<dynamic>;

      List<UserDataModel> newList = dataList
          .map((e) => UserDataModel.fromJson(e as Map<String, dynamic>))
          .toList();

      userData = newList;

      print(userData);

      // Perform any other processing or actions with the userData list
    }

    setState(() {
      isLoading = false;
    });
  }

  @override
  void initState() {
    updateData();
    // updateData().then((_) {
    //   setState(() {});
    // });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.all(20),
                child: Text(
                  "User all data",
                  style: TextStyle(fontSize: 22),
                ),
              ),
              // Display any other properties you want from the userData list
              ListView.builder(
                shrinkWrap: true,
                physics: const BouncingScrollPhysics(),
                itemCount: userData.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: CircleAvatar(
                        child: Text(userData[index].id.toString())),
                    title: Text(
                      userData[index].title.toString(),
                      maxLines: 1,
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
