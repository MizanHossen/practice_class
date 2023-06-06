import 'package:flutter/material.dart';

class Class11 extends StatefulWidget {
  const Class11({super.key});

  @override
  State<Class11> createState() => _Class11State();
}

int topFlex = 20;
int bottomFlex = 20;

class _Class11State extends State<Class11> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              //flex: topFlex,
              flex: topFlex >= 1 ? topFlex : 0,
              child: InkWell(
                onTap: () {
                  setState(
                    () {
                      topFlex = topFlex + 1;
                      bottomFlex--;
                      print("Top Flex: $topFlex");
                      print("Bottom Flex: $bottomFlex");
                    },
                  );
                },
                child: Container(
                  color: Colors.amber,
                  child: topFlex >= 40
                      ? const Center(
                          child: Text(
                            "WIN",
                            style: TextStyle(
                              letterSpacing: 6,
                              wordSpacing: 6,
                              fontSize: 50,
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        )
                      : Container(),
                ),
              ),
            ),
            Expanded(
              flex: bottomFlex >= 1 ? bottomFlex : 0,
              child: InkWell(
                onTap: () {
                  setState(
                    () {
                      topFlex--;
                      bottomFlex = bottomFlex + 1;
                      print("Top Flex: $topFlex");
                      print("Bottom Flex: $bottomFlex");
                    },
                  );
                },
                child: Container(
                  // height: MediaQuery.of(context).size.height,
                  // width: MediaQuery.of(context).size.width,
                  color: Colors.red,
                  child: bottomFlex >= 40
                      ? const Center(
                          child: Text(
                            "WIN",
                            style: TextStyle(
                              letterSpacing: 6,
                              wordSpacing: 6,
                              fontSize: 50,
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        )
                      : Container(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
