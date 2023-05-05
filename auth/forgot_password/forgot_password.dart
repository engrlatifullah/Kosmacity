import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../constant.dart';
import '../customWidget/custom_textfield.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: 280,
              padding: EdgeInsets.symmetric(
                horizontal: 20,
              ),
              color: blackColor,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 10,),
                  Icon(Icons.arrow_back_ios_new_outlined,color: whiteColor,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 78,
                          height: 144,
                          child: SvgPicture.asset('images/flowerleft.svg',fit: BoxFit.cover,)),
                      Container(
                          width: 87,
                          height: 144,
                          child: SvgPicture.asset('images/flowerright.svg',fit: BoxFit.cover,)),
                    ],
                  ),
                  Text(
                    "Welcome",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: whiteColor),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Register to join",
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w400,
                        color: whiteColor),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  SizedBox(height: 20,),
                  CustomTextField(
                    hintText: 'Email',
                    keyboardType: TextInputType.emailAddress,
                    preFixIcon: SvgPicture.asset(
                        'images/Icon Mail.svg',
                    ),
                  ),
                  SizedBox(height: 30,),
                  Container(
                    width: double.infinity,
                    height: 60,
                    decoration: BoxDecoration(
                      color: blackColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Text(
                        "Register",
                        style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w500,
                            color: whiteColor),
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  TextButton(onPressed: (){}, child: Text(
                    "Cancel",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        decoration: TextDecoration.underline,
                        color: blackColor),
                  ),)

                ],
              ),
            )

          ],
        ),
      ),
    );
  }
}
