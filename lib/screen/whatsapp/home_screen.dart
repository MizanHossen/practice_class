import 'package:flutter/material.dart';
import 'package:practice_class/screen/whatsapp/calls_screen.dart';
import 'package:practice_class/screen/whatsapp/status_screen.dart';

import 'chat_screen.dart';

class WhatsAppHomeScreen extends StatelessWidget {
  const WhatsAppHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: const Text(
            "WhatsApp",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {},
              child: const Icon(
                Icons.photo_camera_outlined,
                color: Colors.white,
              ),
            ),
            TextButton(
              onPressed: () {},
              child: const Icon(
                Icons.search,
                color: Colors.white,
              ),
            ),
            TextButton(
              onPressed: () {},
              child: const Icon(
                Icons.more_vert,
                color: Colors.white,
              ),
            ),
          ],
          bottom: const TabBar(
            unselectedLabelColor: Colors.white70,
            // dividerColor: Colors.white,
            indicatorColor: Colors.white,
            indicatorWeight: 3,
            labelPadding: EdgeInsets.all(10),
            labelColor: Colors.white,
            tabs: [
              Center(
                child: Text("Chat"),
              ),
              Center(
                child: Text("Status"),
              ),
              Center(
                child: Text("Calls"),
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            ChatScreen(),
            StatusScreen(),
            CallScreen(),
          ],
        ),
      ),
    );
  }
}
