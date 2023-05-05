import 'dart:async';

import 'package:flutter/material.dart';
import 'package:kosmacity/screen/constant.dart';
import 'package:flutter_svg/svg.dart';

import '../onboarding_screen/onboard_home_screen.dart';
import '../onboarding_screen/onboarding_screen_one.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.push(context, MaterialPageRoute(builder: (_){
        return OnBoardHome();
      }));
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: blackColor,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 170,),
            Padding(
              padding: const EdgeInsets.only(left: 40),
              child: SvgPicture.asset('images/bird.svg'),
            ),
            SizedBox(height: 50,),
            Center(child: Image.asset('images/logo.png'),),
            Spacer(),
             SvgPicture.asset('images/Frame.svg')
          ],
        ),
      ),
    );
  }
}
