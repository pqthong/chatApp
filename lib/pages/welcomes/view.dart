import 'package:firebase_chat/pages/welcomes/controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:dots_indicator/dots_indicator.dart';

class WelcomePage extends GetView<WelcomeController> {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Obx(() => SizedBox(
              width: 360.w,
              height: 760.h,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  PageView(
                    scrollDirection: Axis.horizontal,
                    reverse: false,
                    onPageChanged: (index) {
                      controller.changePage(index);
                    },
                    controller: PageController(
                        initialPage: 0, keepPage: false, viewportFraction: 1),
                    pageSnapping: true,
                    physics: const ClampingScrollPhysics(),
                    children: [
                      Container(
                        width: double.infinity,
                        height: double.infinity,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.fill,
                                image:
                                    AssetImage("assets/images/banner1.png"))),
                      ),
                      Container(
                        width: double.infinity,
                        height: double.infinity,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.fill,
                                image:
                                    AssetImage("assets/images/banner2.png"))),
                      ),
                      Container(
                        width: double.infinity,
                        height: double.infinity,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.fill,
                                image:
                                    AssetImage("assets/images/banner3.png"))),
                        child: Stack(
                          alignment: Alignment.bottomCenter,
                          children: [
                            Positioned(
                                bottom: 100,
                                child: ElevatedButton(
                                  style: ButtonStyle(
                                      side: MaterialStateProperty.all(
                                          const BorderSide(
                                              color: Colors.white)),
                                      shape: MaterialStateProperty.all(
                                          RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10))),
                                      foregroundColor:
                                          MaterialStateProperty.all(
                                              Colors.black),
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                              Colors.white)),
                                  onPressed: () {
                                    controller.handleSignIn();
                                  },
                                  child: Text("Login"),
                                ))
                          ],
                        ),
                      ),
                    ],
                  ),
                  Positioned(
                      bottom: 70,
                      child: DotsIndicator(
                        decorator: DotsDecorator(
                            size: const Size.square(9),
                            activeSize: const Size(18.0, 9.0),
                            activeShape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(9))),
                        dotsCount: 3,
                        position: controller.state.index.value.toDouble(),
                        reversed: false,
                        mainAxisAlignment: MainAxisAlignment.center,
                      ))
                ],
              ),
            )));
  }
}
