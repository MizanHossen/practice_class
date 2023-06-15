import 'package:flutter/material.dart';
import 'package:practice_class/class_14/emun_data.dart';

class Class14 extends StatefulWidget {
  const Class14({super.key});

  @override
  State<Class14> createState() => _Class14State();
}

class _Class14State extends State<Class14> {
  List displayElement = [
    BoxState.empty,
    BoxState.empty,
    BoxState.empty,
    BoxState.empty,
    BoxState.empty,
    BoxState.empty,
    BoxState.empty,
    BoxState.empty,
    BoxState.empty,
  ];

  bool click = false;

  String winnerName = "";

  //var boxState = BoxState.empty;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            winnerName,
            style: TextStyle(fontSize: 22),
          ),
          SizedBox(height: 20),
          Container(
            padding: EdgeInsets.all(5),
            // height: 400,
            // color: Colors.red,
            child: GridView.builder(
              shrinkWrap: true,
              padding: EdgeInsets.zero,
              itemCount: displayElement.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3),
              itemBuilder: (context, index) {
                var boxState = displayElement[index];
                return InkWell(
                  onTap: () {
                    setState(() {
                      if (boxState == BoxState.empty) {
                        if (click == false) {
                          displayElement[index] = BoxState.circle;
                          click = true;
                        } else {
                          displayElement[index] = BoxState.cross;
                          click = false;
                        }
                      } else if (boxState == BoxState.circle) {
                        displayElement[index] = BoxState.cross;
                      } else {
                        displayElement[index] = BoxState.empty;
                      }
                    });

                    //********** 1 */

                    if (displayElement[0] == BoxState.circle &&
                        displayElement[3] == BoxState.circle &&
                        displayElement[6] == BoxState.circle) {
                      setState(() {
                        winnerName = "   Win is O \nGame Over";
                        displayElement.clear();
                      });
                    } else if (displayElement[0] == BoxState.cross &&
                        displayElement[3] == BoxState.cross &&
                        displayElement[6] == BoxState.cross) {
                      setState(() {
                        winnerName = "Win is X";
                        displayElement.clear();
                      });
                    }

                    //************* 2 */

                    if (displayElement[1] == BoxState.circle &&
                        displayElement[4] == BoxState.circle &&
                        displayElement[7] == BoxState.circle) {
                      setState(() {
                        winnerName = "Win is O";
                      });
                    } else if (displayElement[1] == BoxState.cross &&
                        displayElement[4] == BoxState.cross &&
                        displayElement[7] == BoxState.cross) {
                      setState(() {
                        winnerName = "Win is X";
                      });
                    }
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.blue, width: 2),
                    ),
                    child:
                        //Text(displayElement[index].toString())

                        boxState == BoxState.circle
                            ? Icon(Icons.circle_outlined)
                            : boxState == BoxState.cross
                                ? Icon(Icons.close)
                                : null,
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
