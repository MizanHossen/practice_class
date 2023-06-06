import 'package:flutter/material.dart';

class DemoScreen extends StatelessWidget {
  const DemoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff9f2bd0),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // ***************************************** app bar **********************

              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.menu,
                    color: Colors.white,
                  ),
                  CircleAvatar(
                    child: Icon(Icons.person),
                  )
                ],
              ),

              const SizedBox(height: 20),

              const Text(
                "Hi Ghulam",
                style: TextStyle(
                    fontWeight: FontWeight.w800,
                    fontSize: 28,
                    color: Colors.white),
              ),

              const Text(
                "6 Tasks are pending",
                style: TextStyle(fontSize: 18, color: Colors.white70),
              ),

              const SizedBox(height: 40),

              Container(
                // height: 200,
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color(0xff9f2bd0),
                  boxShadow: const [
                    BoxShadow(
                        color: Colors.black,
                        blurRadius: 15,
                        offset: Offset(2, 2))
                  ],
                ),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Mobile App Design",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w800,
                        color: Colors.white70,
                      ),
                    ),
                    const Text(
                      "Mike and Anita",
                      style: TextStyle(fontSize: 16, color: Colors.white70),
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 100,
                          child: Stack(
                            children: [
                              CircleAvatar(
                                child: Icon(Icons.person),
                              ),
                              Positioned(
                                left: 30,
                                child: CircleAvatar(
                                  backgroundColor: Colors.amber,
                                  child: Icon(
                                    Icons.person,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Text(
                          "Now",
                          style: TextStyle(color: Colors.white70),
                        )
                      ],
                    ),
                  ],
                ),
              ),

              SizedBox(height: 20),

              const Text(
                "Monthly Review",
                style: TextStyle(
                    fontWeight: FontWeight.w800,
                    fontSize: 26,
                    color: Colors.white),
              ),

              SizedBox(height: 20),

              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Container(
                            height: 200,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: const Color(0xff9f2bd0),
                              boxShadow: const [
                                BoxShadow(
                                    color: Colors.black,
                                    blurRadius: 15,
                                    offset: Offset(2, 2))
                              ],
                            ),
                            child: Center(
                              child: Text(
                                "22",
                                style: TextStyle(fontSize: 20),
                              ),
                            ),
                          ),
                          SizedBox(height: 20),
                          Container(
                            height: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: const Color(0xff9f2bd0),
                              boxShadow: const [
                                BoxShadow(
                                    color: Colors.black,
                                    blurRadius: 15,
                                    offset: Offset(2, 2))
                              ],
                            ),
                            child: Center(
                              child: Text(
                                "10",
                                style: TextStyle(fontSize: 20),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Container(
                            height: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: const Color(0xff9f2bd0),
                              boxShadow: const [
                                BoxShadow(
                                    color: Colors.black,
                                    blurRadius: 15,
                                    offset: Offset(2, 2))
                              ],
                            ),
                            child: Center(
                              child: Text(
                                "7",
                                style: TextStyle(fontSize: 20),
                              ),
                            ),
                          ),
                          SizedBox(height: 20),
                          Container(
                            height: 200,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: const Color(0xff9f2bd0),
                              boxShadow: const [
                                BoxShadow(
                                    color: Colors.black,
                                    blurRadius: 15,
                                    offset: Offset(2, 2))
                              ],
                            ),
                            child: Center(
                              child: Text(
                                "12",
                                style: TextStyle(fontSize: 20),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
