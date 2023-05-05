import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../categories_screen/categories_screen.dart';
import '../constant.dart';

class HomePageRecent extends StatefulWidget {
  const HomePageRecent({Key? key}) : super(key: key);

  @override
  State<HomePageRecent> createState() => _HomePageRecentState();
}

class _HomePageRecentState extends State<HomePageRecent> {
  PageController _controller = PageController();
  List Categories = ['Art', 'Business', 'Comedy', 'Drama'];
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade300,
        body: ListView(
          children: [
            Container(
              padding: EdgeInsets.all(20),
              color: whiteColor,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Image.asset('assets/log.png'),
                      Spacer(),
                      Icon(
                        Icons.search,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Hello Clarisse! Continue reading ",
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 191,
                    width: double.infinity,
                    child: PageView.builder(
                        controller: _controller,
                        itemCount: 3,
                        itemBuilder: (_, index) {
                          return Container(
                            width: double.infinity,
                            height: 190,
                            margin: EdgeInsets.symmetric(horizontal: 5),
                            decoration: BoxDecoration(
                              color: blackColor,
                              borderRadius: BorderRadius.circular(20),
                              gradient: LinearGradient(
                                colors: [
                                  blackColor,
                                  blackColor,
                                  lightBlueColor,
                                  pinkColor
                                ],
                              ),
                            ),
                            child: Stack(
                              children: [
                                Padding(
                                    padding:
                                        EdgeInsets.only(left: 190, top: 30),
                                    child: Image.asset('assets/heart.png')),
                                Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "William Shakespeare",
                                        style: TextStyle(
                                            fontSize: 17,
                                            fontWeight: FontWeight.w400,
                                            color: whiteColor),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        "374 pages",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w300,
                                            color: whiteColor),
                                      ),
                                      Spacer(),
                                      Text(
                                        "Book Romeo and Juliet",
                                        style: TextStyle(
                                            fontSize: 22,
                                            fontWeight: FontWeight.w500,
                                            color: whiteColor),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          );
                        }),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Center(
                    child: SmoothPageIndicator(
                      controller: _controller,
                      count: 3,
                      effect: WormEffect(
                          dotColor: lightGreyColor,
                          activeDotColor: blackColor,
                          dotHeight: 10,
                          dotWidth: 10),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Image.asset('assets/Mask.png'),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Continue reading ",
                        style: TextStyle(color: blackColor),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Westward Expansion\nin The United States",
                        style: TextStyle(
                            color: blackColor,
                            fontSize: 17,
                            fontWeight: FontWeight.w400),
                      ),

                      Text(
                        "Your reading progress",
                        style: TextStyle(color: greyColor),
                      ),
                      SizedBox(height: 60,),
                      Row(
                        children: [
                          Container(
                            height: 20,
                            width: 160,
                            child: LinearPercentIndicator(
                              percent: 0.73,
                              progressColor: blackColor,
                              barRadius: Radius.circular(5),
                            ),
                          ),
                          Text("73%",)
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(20),
              width: double.infinity,
              color: whiteColor,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Categories",
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 16),
                      ),
                      InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (_){
                            return CategoriesScreen();
                          }),);
                        },
                        child: Text(
                          "See more",
                          style: TextStyle(
                              fontWeight: FontWeight.w500, color: blueColor),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 40,
                    child: ListView.builder(
                      itemCount: 4,
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (_, index) {
                        return InkWell(
                          onTap: () {
                            setState(() {
                              _currentIndex = index;
                            });
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            margin: EdgeInsets.symmetric(horizontal: 5),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                color: _currentIndex == index
                                    ? blackColor
                                    : greyColor,
                              ),
                            ),
                            child: Center(
                                child: Text(
                              Categories[index],
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: _currentIndex == index
                                    ? blackColor
                                    : greyColor,
                              ),
                            )),
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Featured Audiobooks",
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 16),
                      ),
                      Text(
                        "See all",
                        style: TextStyle(
                            fontWeight: FontWeight.w500, color: blueColor),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 200,
                    width: double.infinity,
                    child: ListView.builder(
                      itemCount: 6,
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Stack(
                                alignment: Alignment.bottomLeft,
                                children: [
                                  ClipRRect(
                                    child: Image.asset('assets/Image.png'),
                                  ),
                                  Container(
                                    height: 30,
                                    width: 30,
                                    margin: EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                      color: whiteColor,
                                      shape: BoxShape.circle,
                                    ),
                                    child: Center(
                                        child: SvgPicture.asset(
                                      'assets/Headset.svg',
                                      height: 15,
                                      width: 15,
                                    )),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Aunty Lee’s\nDelights",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w500),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Ovidia Yu",
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    color: greyColor),
                              )
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Featured Books",
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 16),
                      ),
                      Text(
                        "See all",
                        style: TextStyle(
                            fontWeight: FontWeight.w500, color: blueColor),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 215,
                    width: double.infinity,
                    child: ListView.builder(
                      itemCount: 6,
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipRRect(
                                child: Image.asset('assets/title.png'),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Aunty Lee’s\nDelights",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w500),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Ovidia Yu",
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    color: greyColor),
                              )
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
