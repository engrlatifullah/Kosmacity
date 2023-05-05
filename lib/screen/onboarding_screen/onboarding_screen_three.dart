import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constant.dart';

class OnBoardingScreenThree extends StatelessWidget {
  const OnBoardingScreenThree({Key? key}) : super(key: key);

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
                    "Don’t judge the\nbook by cover ",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w700,
                        color: whiteColor),
                  ),
                  SizedBox(height: 20,),
                  Text(
                    "Free Previews & recommendations\nfrom other book lovers.",
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
                child: SvgPicture.asset('images/mou.svg',fit: BoxFit.fill,)),
          ],
        ),
      ),
    );
  }
}
