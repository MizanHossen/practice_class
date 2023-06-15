import 'package:flutter/material.dart';
import 'package:practice_class/class_10/animated_page_view.dart';
import 'package:practice_class/class_11/class_11.dart';
import 'package:practice_class/class_12/bottom_bar_controller.dart';
import 'package:practice_class/class_12/dashboard.dart';
import 'package:practice_class/class_12/home.dart';
import 'package:practice_class/class_14/class_14.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // git changesssss

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Class14(),
    );
  }
}
