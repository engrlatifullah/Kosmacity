import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kosmacity/screen/constant.dart';

class OnBoardingScreenOne extends StatelessWidget {
  const OnBoardingScreenOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: blackColor,
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 120,
                  ),
                  Row(
                    children: [
                      SvgPicture.asset('images/book.svg'),
                      Image.asset(
                        'images/logo.png',
                        height: 40,
                      ),
                    ],
                  ),
                  SizedBox(height: 20,),
                  Text(
                    "Read or listen\nunlimited",
                    style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w700,
                    color: whiteColor),
                  ),
                  SizedBox(height: 20,),
                  Text(
                    "Find best E-books and Audiobooks in\nyour Local Languages",
                    style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w400,
                    color: whiteColor),
                  ),
                  Container(
                      height: 30,
                      width: 80,
                      margin: EdgeInsets.only(left: 200,top: 115),
                      child: SvgPicture.asset('images/secondbird.svg')),


                ],
              ),
            ),
            Container(
              height: 280,
                width: double.infinity,
                child: SvgPicture.asset('images/mount.svg',fit: BoxFit.fill,)),
          ],
        ),
      ),
    );
  }
}
