import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kosmacity/screen/constant.dart';
import 'package:kosmacity/screen/home_screen/home_screen.dart';

import '../book_screen/book_screen.dart';
import '../my_library_screen/my_library.dart';
import '../settings_screen/settings_screen.dart';

class CustomBottomNavigation extends StatefulWidget {
  const CustomBottomNavigation({Key? key}) : super(key: key);

  @override
  State<CustomBottomNavigation> createState() => _CustomBottomNavigationState();
}

class _CustomBottomNavigationState extends State<CustomBottomNavigation> {
  List Pages = [HomeScreen(), Book(), Container(), MyLibrary(), SettingsScreen(),];
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(

          currentIndex: _currentIndex,
          type: BottomNavigationBarType.fixed,
          unselectedFontSize: 14,
          selectedItemColor: blackColor,
          unselectedItemColor: greyColor,
          onTap: (v){
            setState(() {
              _currentIndex = v;
            });
          },
          items: [
          BottomNavigationBarItem(icon: SvgPicture.asset("assets/coms.svg",color: _currentIndex == 0 ? blackColor : greyColor,), label: 'Kosmos'),
          BottomNavigationBarItem(icon: SvgPicture.asset("assets/bookicon.svg",color: _currentIndex == 1 ? blackColor : greyColor,), label: 'Books'),
          BottomNavigationBarItem(icon: SvgPicture.asset("assets/Abook.svg",color: _currentIndex == 2 ? blackColor : greyColor,), label: 'Audiobooks'),
          BottomNavigationBarItem(icon: SvgPicture.asset("assets/myLibrary.svg",color: _currentIndex == 3 ? blackColor : greyColor,), label: 'My Library'),
          BottomNavigationBarItem(icon: SvgPicture.asset("assets/account.svg",color: _currentIndex == 4 ? blackColor : greyColor,), label: 'Account'),
        ],

        ),
        body:Pages[_currentIndex],
      ),
    );
  }
}
