import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List nameList = [
      "Mizan Hossen",
      "Rahim",
      "Zunaed",
    ];
    return ListView.builder(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      itemCount: nameList.length,
      itemBuilder: (context, index) {
        return ListTile(
          leading: const CircleAvatar(
            child: Icon(Icons.person),
          ),
          title: Text(nameList[index]),
          subtitle: Text("Hi, how are you"),
        );
      },
    );
  }
}
