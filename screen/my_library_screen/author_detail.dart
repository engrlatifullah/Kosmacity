import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AuthorDetail extends StatefulWidget {
  const AuthorDetail({Key? key}) : super(key: key);

  @override
  State<AuthorDetail> createState() => _AuthorDetailState();
}

class _AuthorDetailState extends State<AuthorDetail> {
  List<String> titles = [
    'Drama',
    'Mysteries & Thrillers',
    'Biographies',
    'Romance',
    'Fantasy',
    'Horror'
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          automaticallyImplyLeading: false,
          toolbarHeight: 300,
          flexibleSpace: Container(
            width: double.infinity,
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [Colors.black, Colors.grey],
              ),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(
                          Icons.arrow_back_ios_new_outlined,
                          color: Colors.white,
                        )),
                    Icon(
                      Icons.more_horiz_sharp,
                      color: Colors.white,
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                      child: Column(
                        children: [
                          Text(
                            "837",
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                                fontSize: 16),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text("Books",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16)),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    CircleAvatar(
                      radius: 50,
                      backgroundColor: Colors.grey,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      children: [
                        Text(
                          "726",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                              fontSize: 16),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text("Audiobooks",
                            style:
                                TextStyle(color: Colors.white, fontSize: 16)),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Amanda Lockwood",
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w700,
                      color: Colors.white),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "8.2M Followers",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: Colors.white),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 40,
                  width: 120,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Center(
                    child: Text(
                      "Follow",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 17),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: ListView(
            children: [
              Text(
                "Genres",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                    fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: 10,
              ),
              Wrap(
                spacing: 10,
                children: List.generate(
                  titles.length,
                  (index) => Chip(
                    backgroundColor: Colors.black,
                    side: BorderSide(color: Colors.white),
                    label: Text(
                      titles[index],
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "About",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                    fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: 10,
              ),
              RichText(
                text: TextSpan(
                  text:
                      "Amanda is an American writer, best known for her romance novels. She is the bestselling author alive and the fourth bestselling fiction author of all time, with over 800 million copies sold. She has written 179 books, in ….",
                  children: [
                    TextSpan(
                      text: 'read more',
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Text(
                    "Books",
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16,color: Colors.white),
                  ),
                  Spacer(),
                  Text(
                    "See all",
                    style: TextStyle(
                        fontWeight: FontWeight.w500, color: Colors.grey),
                  ),
                  SizedBox(width: 5,),
                  Icon(Icons.arrow_forward_ios_outlined,color: Colors.grey,size: 20,)
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 220,
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
                          Container(
                            width: 100,
                            height: 150,
                            decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Align(
                              alignment: Alignment.bottomCenter,
                              child: Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Row(children: [
                                  Icon(Icons.favorite_border,color: Colors.grey.shade300,),
                                  Spacer(),
                                  Icon(Icons.star,color: Color(0xFFFF9500),),
                                  Text("4.5",style: TextStyle(color: Colors.white),),
                                ],),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Aunty Lee’s\nDelights",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w500,color: Colors.white),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Ovidia Yu",
                            style: TextStyle(
                                fontWeight: FontWeight.w400, color: Colors.grey),
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
                children: [
                  Text(
                    "Audiobooks",
                    style: TextStyle(
                        fontWeight: FontWeight.w500, fontSize: 16,color: Colors.white),
                  ),
                  Spacer(),
                  Text(
                    "See all",
                    style: TextStyle(
                        fontWeight: FontWeight.w500, color: Colors.grey),
                  ),
                  SizedBox(width: 5,),
                  Icon(Icons.arrow_forward_ios_outlined,color: Colors.grey,size: 20,)
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
                              Container(
                                height: 122,
                                width: 122,
                                decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              Container(
                                height: 30,
                                width: 30,
                                margin: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  shape: BoxShape.circle,
                                ),
                                child: Center(
                                    child: SvgPicture.asset(
                                      'image/Headset.svg',
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
                            "Abstract Art in\nThe World",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w500,color: Colors.white),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Armando Newman",
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                color: Colors.grey),
                          )
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
