import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kosmacity/screen/constant.dart';
import 'package:kosmacity/screen/signin_screen/socialicon.dart';
import 'package:kosmacity/screen/signup_screen/signup_screen.dart';

import '../customWidget/custom_textfield.dart';
import '../forgot_password/forgot_password.dart';

class SigIn extends StatelessWidget {
  const SigIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 280,
                color: blackColor,
                child: Stack(
                  children: [
                    Align(
                        alignment: Alignment.centerRight,
                        child: SvgPicture.asset('images/leaf.svg')),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
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
                            "Sign in to continue",
                            style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w400,
                                color: whiteColor),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    CustomTextField(
                      hintText: 'Email',
                      keyboardType: TextInputType.emailAddress,
                      preFixIcon: SvgPicture.asset(
                        'images/Icon User.svg',
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    CustomTextField(
                      hintText: 'Password',
                      obSecureText: true,
                      preFixIcon: SvgPicture.asset(
                        'images/Icon Lock.svg',
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      width: double.infinity,
                      height: 60,
                      decoration: BoxDecoration(
                        color: blackColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text(
                          "Sign In",
                          style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w500,
                              color: whiteColor),
                        ),
                      ),
                    ),
                    SizedBox(height: 10,),
                    Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (_){
                            return ForgotPassword();
                          }));
                        },
                        child: Text(
                          "Forgot password?",
                          style: TextStyle(
                              fontSize: 16,
                              color: blackColor,
                              fontWeight: FontWeight.w400,
                            decoration: TextDecoration.underline
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 30,),
                    Text(
                      "or connect",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SocialIcon(
                          icon: SvgPicture.asset('images/logos_google.svg'),
                        ),
                        SocialIcon(
                          icon: SvgPicture.asset('images/logos_facebook.svg'),
                        ),
                        SocialIcon(
                          icon: SvgPicture.asset('images/applelogo.svg'),
                        ),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Don’t have an account?",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                          ),
                        ),
                        TextButton(onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (_){
                            return SignUp();
                          }));
                        }, child: Text(
                          "Register",
                          style: TextStyle(
                              fontSize: 16,
                              color: blackColor,
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline
                          ),
                        ),)
                      ],
                    ),

                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}


