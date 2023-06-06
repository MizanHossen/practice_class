import 'package:flutter/material.dart';

class CallScreen extends StatelessWidget {
  const CallScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List nameList = [
      "Mizan Hossen",
      "Rahim",
      "Zunaed",
    ];

    return ListView.builder(
      itemCount: nameList.length,
      itemBuilder: (context, index) {
        return ListTile(
          leading: const CircleAvatar(
            child: Icon(Icons.person),
          ),
          title: Text(nameList[index]),
          subtitle: const Row(
            children: [
              Icon(
                Icons.arrow_back,
                size: 15,
              ),
              Text("Today, 4:13 PM")
            ],
          ),
          trailing: Icon(Icons.call),
        );
      },
    );
  }
}
