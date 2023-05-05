import 'package:flutter/material.dart';

import '../constant.dart';

class CustomTextField extends StatelessWidget {
  final String? hintText;
  final Widget? preFixIcon;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final bool? obSecureText;

  const CustomTextField(
      {Key? key,
        this.hintText,
        this.preFixIcon,
        this.controller,
        this.obSecureText = false,
        this.keyboardType})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      child: TextField(
        keyboardType: keyboardType,
        obscureText: obSecureText!,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.only(left: 10),
          hintText: hintText,
          prefixIcon: Padding(
            padding: const EdgeInsets.only(right: 5),
            child: preFixIcon,
          ),
          prefixIconConstraints: BoxConstraints(
            minHeight: 25,
            maxHeight: 25,
            maxWidth: 25,
            minWidth: 25,
          ),
          border:
          UnderlineInputBorder(borderSide: BorderSide(color: greyColor)),
          focusedBorder:
          UnderlineInputBorder(borderSide: BorderSide(color: greyColor)),
        ),
      ),
    );
  }
}