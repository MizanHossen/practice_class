import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class Class91 extends StatefulWidget {
  const Class91({super.key});

  @override
  State<Class91> createState() => _Class91State();
}

class _Class91State extends State<Class91> {
  int number = 0;

  double percentageNum = 0.0;

  increaseNumber() {
    setState(() {
      percentageNum = percentageNum + 0.1;

      number++;
    });
  }

  decreaseNumber() {
    setState(() {
      percentageNum = percentageNum - 0.1;
      number--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircularPercentIndicator(
            radius: 60.0,
            lineWidth: 5.0,
            percent: percentageNum,
            center: Text(number.toString(),
                style: const TextStyle(
                  fontSize: 42,
                  fontWeight: FontWeight.w800,
                )),
            progressColor: Colors.green,
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onLongPress: increaseNumber,
                onPressed: increaseNumber,
                child: const Text("Increase"),
              ),
              const SizedBox(width: 20),
              ElevatedButton(
                onPressed: decreaseNumber,
                child: const Text("Decrease"),
              ),
            ],
          )
        ],
      ),
    );
  }
}
