import 'package:flutter/material.dart';

class ItemScreen extends StatelessWidget {
  const ItemScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20).copyWith(top: 20),
              height: MediaQuery.of(context).size.height * 0.45,
              width: double.infinity,
              decoration: const BoxDecoration(
                // borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                image: DecorationImage(
                  fit: BoxFit.contain,
                  image: NetworkImage(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTlffWmU_dGDtvy1i6zo2UjSsNYxQmunAf9tWHL-JgMrhbnmAKmAuNBLy4PDUR_fFrDzUc&usqp=CAU"),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    padding: const EdgeInsets.only(left: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey,
                    ),
                    child: Center(
                      child: InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: const Icon(
                          Icons.arrow_back_ios,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        height: 5,
                        width: 100,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                      const SizedBox(height: 20),
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Men's league",
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w800,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        "Take part in a 2 hour session where you can expect plenty of rallying followed by competitive point play team sigles style,",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 40),
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(color: Colors.grey),
                              ),
                              child: const Column(
                                children: [
                                  Icon(
                                    Icons.calendar_month,
                                    color: Colors.white,
                                  ),
                                  SizedBox(height: 10),
                                  Text(
                                    "24 February",
                                    style: TextStyle(color: Colors.white),
                                  )
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(width: 5),
                          Expanded(
                            child: Container(
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(color: Colors.grey),
                              ),
                              child: const Column(
                                children: [
                                  Icon(
                                    Icons.calendar_month,
                                    color: Colors.white,
                                  ),
                                  SizedBox(height: 10),
                                  Text(
                                    "24 February",
                                    style: TextStyle(color: Colors.white),
                                  )
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(width: 5),
                          Expanded(
                            child: Container(
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(color: Colors.grey),
                              ),
                              child: const Column(
                                children: [
                                  Icon(
                                    Icons.calendar_month,
                                    color: Colors.white,
                                  ),
                                  SizedBox(height: 10),
                                  Text(
                                    "24 February",
                                    style: TextStyle(color: Colors.white),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      const Spacer(),
                      Container(
                        padding: const EdgeInsets.symmetric(vertical: 15),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.green,
                        ),
                        child: const Center(
                          child: Text(
                            "Participate \$30",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
