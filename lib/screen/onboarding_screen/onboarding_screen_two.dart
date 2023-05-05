import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constant.dart';

class OnBoardingScreenTwo extends StatelessWidget {
  const OnBoardingScreenTwo({Key? key}) : super(key: key);

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
                    "Enjoy Reading & listening online or\noffline with one subscription ",
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w400,
                        color: whiteColor),
                  ),


                ],
              ),
            ),
            Spacer(),
            Container(
                height: 280,
                width: double.infinity,
                child: SvgPicture.asset('images/Group.svg',fit: BoxFit.fill,)),
          ],
        ),
      ),
    );
  }
}
