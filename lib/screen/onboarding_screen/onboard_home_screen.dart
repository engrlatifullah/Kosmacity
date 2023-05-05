import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:kosmacity/screen/constant.dart';
import 'package:kosmacity/screen/onboarding_screen/onboarding_screen_one.dart';

import '../signin_screen/signin_screen.dart';
import 'onboarding_screen_three.dart';
import 'onboarding_screen_two.dart';

class OnBoardHome extends StatefulWidget {
  const OnBoardHome({Key? key}) : super(key: key);

  @override
  State<OnBoardHome> createState() => _OnBoardHomeState();
}

class _OnBoardHomeState extends State<OnBoardHome> {
  bool isLastIndex = false;
  PageController _controller = PageController();
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        body: Stack(
          children: [
            PageView(
              controller: _controller,
              onPageChanged: (val) {
                setState(() {
                  isLastIndex = val == 2;
                  currentIndex = val;
                });
              },
              children: [
                OnBoardingScreenOne(),
                OnBoardingScreenTwo(),
                OnBoardingScreenThree(),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                      alignment: Alignment.topRight,
                      child: InkWell(
                        onTap: (){
                          setState(() {
                           _controller.jumpToPage(2);
                           currentIndex = 2;
                          });
                        },
                        child: Text(
                          "Skip",
                          style: TextStyle(color: whiteColor, fontSize: 17),
                        ),
                      )),
                  Spacer(),

                DotsIndicator(
                  dotsCount: 3,
                  position: currentIndex.toDouble(),
                  decorator: DotsDecorator(
                    activeColor: whiteColor,
                    color: greyColor,
                    size: Size(50.0, 5.0),
                    activeSize: const Size(50.0, 5.0),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
                    activeShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
                  ),
                ),
                  Spacer(),
                  isLastIndex ? InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (_){
                        return SigIn();
                      }));
                    },
                    child: Container(
                      height: 50,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: whiteColor,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: blackColor),
                      ),
                      child: Center(
                          child: Text(
                            "Get Started",
                            style:
                            TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                          )),
                    ),
                  ) :
                  InkWell(
                    onTap: (){
                      setState(() {
                       _controller.nextPage(duration: Duration(milliseconds: 300), curve: Curves.easeIn);
                       currentIndex ++;
                      });
                    },
                    child: Container(
                      height: 50,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: whiteColor,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: blackColor),
                      ),
                      child: Center(
                          child: Text(
                        "Next",
                        style:
                            TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                      )),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
