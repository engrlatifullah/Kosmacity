import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constant.dart';

class EmailScreen extends StatelessWidget {
  const EmailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 280,
            color: blackColor,
            child: Stack(
              children: [
                Align(
                    alignment: Alignment.topRight,
                    child: SvgPicture.asset('images/fra.svg')),
               Padding(
                 padding: const EdgeInsets.symmetric(horizontal: 20),
                 child: Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     SizedBox(
                       height: 10,
                     ),
                     InkWell(
                       onTap: (){
                         Navigator.pop(context);
                       },
                       child: Icon(
                         Icons.arrow_back_ios_new_outlined,
                         color: whiteColor,
                       ),
                     ),
                     Spacer(),
                     Padding(
                       padding: const EdgeInsets.symmetric(horizontal: 20),
                       child: Text(
                         "Email Sent",
                         style: TextStyle(
                             fontSize: 30,
                             fontWeight: FontWeight.bold,
                             color: whiteColor),
                       ),
                     ),
                     SizedBox(
                       height: 10,
                     ),
                     Padding(
                       padding: const EdgeInsets.symmetric(horizontal: 20),
                       child: Text(
                         "We sent an email to y***@mail.com with a link to get back into your\naccount.",
                         style: TextStyle(
                             fontSize: 17,
                             fontWeight: FontWeight.w400,
                             color: whiteColor),
                       ),
                     ),
                     SizedBox(height: 30,)
                   ],
                 ),
               )
              ],
            ),
          ),
          SizedBox(height: 30,),
          InkWell(
            onTap: () {
              
            },
            child: Container(
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: 20),
              height: 60,
              decoration: BoxDecoration(
                color: blackColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Text(
                  "Close",
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                      color: whiteColor),
                ),
              ),
            ),
          ),

        ],
      ),
    ),);
  }
}
