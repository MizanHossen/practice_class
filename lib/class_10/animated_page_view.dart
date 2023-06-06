import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:practice_class/class_10/home_screen.dart';

class AnimatedPageView extends StatelessWidget {
  const AnimatedPageView({super.key});

  @override
  Widget build(BuildContext context) {
    CarouselController buttonCarouselController = CarouselController();
    List colorList = [
      Colors.amber,
      Colors.blue,
      Colors.green,
      Colors.blueGrey,
    ];
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 100),
            const Center(
              child: Text(
                "Chose your level",
                style: TextStyle(
                  fontSize: 28,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(height: 50),
            CarouselSlider.builder(
              carouselController: buttonCarouselController,
              options: CarouselOptions(
                height: MediaQuery.of(context).size.width * 0.9,
                aspectRatio: 16 / 9,
                viewportFraction: 0.8,
                initialPage: 0,
                enableInfiniteScroll: true,
                reverse: false,
                autoPlay: true,
                autoPlayInterval: const Duration(seconds: 3),
                autoPlayAnimationDuration: const Duration(milliseconds: 800),
                autoPlayCurve: Curves.fastOutSlowIn,
                enlargeCenterPage: true,
                enlargeFactor: 0.3,
                onScrolled: (value) {},
                onPageChanged: ((index, reason) {
                  // controller.sliderCurrentPostion.value = index;
                  //print(controller.sliderCurrentPostion.value);
                }),
                scrollDirection: Axis.horizontal,
              ),
              // options: CarouselOptions(
              //   autoPlay: false,
              //   height: 200,
              //   viewportFraction: 1,
              //   // onPageChanged: (index, reason) => setState(
              //   //   (() => activeIndex = index),
              //   // ),
              // ),
              itemCount: colorList.length,
              itemBuilder: (context, index, realIndex) {
                // final message = messages[index];

                return Container(
                  //  margin: EdgeInsets.all(5),
                  height: 500,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: colorList[index],
                  ),
                  child: const Center(
                      child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.person,
                        size: 100,
                      ),
                      SizedBox(height: 50),
                      Text(
                        "Average",
                        style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.w800,
                        ),
                      )
                    ],
                  )),
                );
              },
            ),
            const SizedBox(height: 100),
            InkWell(
              onTap: () => buttonCarouselController.nextPage(
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.linear),
              child: const CircleAvatar(
                radius: 30,
                backgroundColor: Colors.green,
                child: Icon(
                  Icons.arrow_forward_ios_outlined,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(height: 30),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HomeScreen(),
                    ));
              },
              child: const Text(
                "Skip for now",
                style: TextStyle(color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
