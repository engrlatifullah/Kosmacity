import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kosmacity/screen/constant.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  PageController _controller = PageController();
  List Categories = ['Art', 'Business', 'Comedy', 'Drama'];
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: ListView(
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
                "Hello Clarisse! Welcome",
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
                                padding: EdgeInsets.only(left: 190, top: 30),
                                child: Image.asset('assets/heart.png')),
                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Categories",
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                  ),
                  Text(
                    "See more",
                    style: TextStyle(
                        fontWeight: FontWeight.w500, color: blueColor),
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
                            color:
                                _currentIndex == index ? blackColor : greyColor,
                          ),
                        ),
                        child: Center(
                            child: Text(
                          Categories[index],
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color:
                                _currentIndex == index ? blackColor : greyColor,
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
                    "Popular Authors",
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
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
                height: 80,
                child: ListView.builder(
                  itemCount: 4,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Container(
                        width: 200,
                        margin: EdgeInsets.symmetric(horizontal: 5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(),
                        ),
                        child: ListTile(
                          leading: CircleAvatar(
                            backgroundImage: AssetImage('assets/User Pict.png'),
                          ),
                          title: Text(
                            "Gerard Fabiano",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w500),
                          ),
                          subtitle: Text(
                            "Leila’s Story",
                            style: TextStyle(fontWeight: FontWeight.w300),
                          ),
                        ));
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
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
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
                width: 130,
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
                                fontWeight: FontWeight.w400, color: greyColor),
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
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
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
                width: 130,
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
                                fontWeight: FontWeight.w400, color: greyColor),
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
        ),
      ),
    );
  }
}
