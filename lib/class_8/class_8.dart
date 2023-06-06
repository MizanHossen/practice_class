import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

// ignore: must_be_immutable
class Class8 extends StatelessWidget {
  Class8({super.key});

  List itemColor = [
    Colors.red,
    Colors.amber,
    Colors.blue,
    Colors.blueAccent,
  ];

  List itemPercent = [0.4, 0.8, 0.3, 0.6];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 30),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Hello, Cillie!",
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.amber,
                      child: Icon(Icons.person),
                    )
                  ],
                ),
                const SizedBox(height: 10),
                const Text(
                  "Your Progress",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                const SizedBox(height: 20),

                ///
                SizedBox(
                  // margin: EdgeInsets.all(20),
                  height: MediaQuery.of(context).size.height * 0.27,
                  // width: 100,
                  child: ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemCount: itemColor.length,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: const EdgeInsets.all(10).copyWith(left: 0),
                        //height: MediaQuery.of(context).size.height * 0.15,
                        width: MediaQuery.of(context).size.width * 0.35,
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: itemColor[index],
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.black54,
                              offset: Offset(2, 2),
                              blurRadius: 10,
                            ),
                          ],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CircularPercentIndicator(
                              radius: 30.0,
                              lineWidth: 5.0,
                              percent: itemPercent[index],
                              center: const Text(
                                "19/40",
                                style: TextStyle(color: Colors.white),
                              ),
                              progressColor: Colors.black,
                            ),
                            const SizedBox(height: 10),
                            const Text(
                              "Working \nHours",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            const SizedBox(height: 5),
                            const Text(
                              "Working hours \n by 3 hours",
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        ),
                      );
                    },
                  ),
                ),

                const SizedBox(height: 20),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Wednesday, March 7",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(10)),
                      child: const Center(
                        child: Icon(
                          Icons.calendar_month,
                          color: Colors.white,
                        ),
                      ),
                    )
                  ],
                ),

                const SizedBox(height: 20),

                ListView.builder(
                  itemCount: itemColor.length,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Container(
                      height: 130,
                      margin: EdgeInsets.symmetric(vertical: 10),
                      child: Row(
                        children: [
                          Expanded(
                            child: SizedBox(
                              height: MediaQuery.of(context).size.width,
                              child: const Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("10:00 AM"),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 3,
                            child: Container(
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: itemColor[index],
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Metting with font-end developer",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w800,
                                    ),
                                  ),
                                  Text(
                                    "New Project",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  SizedBox(height: 20),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
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
                                                backgroundColor:
                                                    Colors.blueGrey,
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
                                        "9:50 AM - 10:50 AM",
                                        style: TextStyle(color: Colors.white70),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    );
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
