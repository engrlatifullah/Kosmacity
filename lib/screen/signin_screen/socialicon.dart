import 'package:flutter/material.dart';
import 'package:kosmacity/screen/constant.dart';

class SocialIcon extends StatelessWidget {
  final Widget ? icon;
  const SocialIcon({
    Key? key, this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      width: 96,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: blackColor,
        ),
      ),
      child: Center(child: icon,),
    );
  }
}