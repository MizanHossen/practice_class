import 'package:flutter/material.dart';

class StatusScreen extends StatelessWidget {
  const StatusScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const ListTile(
      leading: CircleAvatar(child: Icon(Icons.add)),
      title: Text(
        "My Status",
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w800,
        ),
      ),
      subtitle: Text("Tap to add status update"),
    );
  }
}
