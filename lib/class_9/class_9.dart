import 'package:flutter/material.dart';

class Class9 extends StatelessWidget {
  const Class9({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: const Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 40,
              child: Icon(Icons.person),
            ),
            const SizedBox(height: 20),
            const Text(
              "Send an invoice to ",
              style: TextStyle(
                fontSize: 22,
                color: Colors.blue,
                fontWeight: FontWeight.w800,
              ),
            ),
            const Text(
              "Alan Cooper ",
              style: TextStyle(
                fontSize: 22,
                //color: Colors.blue,
                fontWeight: FontWeight.w800,
              ),
            ),
            const SizedBox(height: 20),
            CustomTextBox(
              title: "Service name",
              text: "Essay editing",
            ),
            const SizedBox(height: 20),
            CustomTextBox(
              title: "Message to client (optional)",
              text: "Flor our session last week on April 19",
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  child: CustomTextBox(
                    title: "Invoice ammount",
                    text: "\$23.3",
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: CustomTextBox(
                    title: "Days until due",
                    text: "14 days",
                    isIcon: true,
                  ),
                ),
              ],
            ),
            //ElevatedButton(onPressed: () {}, child: Text("dmeo button")),
            const Spacer(),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 15),
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Center(child: Text("Send Invoice")),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class CustomTextBox extends StatelessWidget {
  final String title;
  final String text;
  bool? isIcon;

  CustomTextBox({
    super.key,
    required this.title,
    required this.text,
    this.isIcon = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 13,
                    ),
                  ),
                  Text(
                    text,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
            isIcon == true
                ? const Icon(Icons.arrow_drop_down_outlined)
                : Container(),
          ],
        ),
        const Divider(
          thickness: 2,
        )
      ],
    );
  }
}
