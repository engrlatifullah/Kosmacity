import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constant.dart';
import '../customWidget/custom_textfield.dart';
import '../signin_screen/signin_screen.dart';
import '../signin_screen/socialicon.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool _value = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                height: 280,
                padding: EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                color: blackColor,
                child: Stack(
                  children: [
                    Align(
                        alignment: Alignment.bottomRight,
                        child: SvgPicture.asset('images/Vector.svg')),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 30),
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
                            "Register to join",
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
                      hintText: 'Enter your Email',
                      obSecureText: true,
                      preFixIcon: SvgPicture.asset(
                        'images/Icon Mail.svg',
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
                    Row(
                      children: [
                        Checkbox(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),

                            checkColor: whiteColor,
                            activeColor: greyColor,
                            value: _value,
                            onChanged: (v) {
                              setState(() {
                                _value = v!;
                              });
                            }),
                        Text(
                          "I agree to our Terms, Data Policy.",
                          style: TextStyle(fontWeight: FontWeight.w500),
                        )
                      ],
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
                          "Register",
                          style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w500,
                              color: whiteColor),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "or connect",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
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
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Have an account?",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (_){
                              return SigIn();
                            }));
                          },
                          child: Text(
                            "Sign in",
                            style: TextStyle(
                                fontSize: 16,
                                color: blackColor,
                                fontWeight: FontWeight.bold,
                                decoration: TextDecoration.underline),
                          ),
                        )
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
