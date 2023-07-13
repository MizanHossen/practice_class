import 'package:flutter/material.dart';
import 'package:practice_class/controller/count_num_provider.dart';
import 'package:provider/provider.dart';

class Class20 extends StatelessWidget {
  const Class20({super.key});

  @override
  Widget build(BuildContext context) {
    final CountNumberProvider countNumberProvider =
        Provider.of<CountNumberProvider>(context);
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Spacer(),
          Center(
              child: Text(
            countNumberProvider.number.toString(),
            style: const TextStyle(fontSize: 20),
          )),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              children: [
                ElevatedButton(
                  onPressed: () {
                    countNumberProvider.decreaseNum();
                  },
                  child: const Icon(Icons.remove),
                ),
                const Spacer(),
                ElevatedButton(
                  onPressed: () {
                    countNumberProvider.increaseNum();
                  },
                  child: const Icon(Icons.add),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
