import 'package:flutter/material.dart';
import 'package:kosmacity/screen/categories_screen/widget/model.dart';
import 'package:kosmacity/screen/constant.dart';

class CategoriesScreen extends StatefulWidget {
  const CategoriesScreen({Key? key}) : super(key: key);

  @override
  State<CategoriesScreen> createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {
  List<Model> CategoriesItem = [
    Model(title: 'Arts', bookCount: '493 books', image: 'assets/art.png'),
    Model(
        title: 'Photography', bookCount: '947 books', image: 'assets/photograpy.png'),
    Model(title: 'Business', bookCount: '385 books', image: 'assets/bussnis.png'),
    Model(title: 'Classics', bookCount: '847 books', image: 'assets/classic.png'),
    Model(title: 'Comedy', bookCount: '259  books', image: 'assets/comedy.png'),
    Model(title: 'Drama', bookCount: '586  books', image: 'assets/drama.png'),
    Model(title: 'Fiction', bookCount: '385  books', image: 'assets/fic.png'),
    Model(title: 'Health', bookCount: '847  books', image: 'assets/he.png'),
    Model(title: 'History', bookCount: '259  books', image: 'assets/hist.png'),
    Model(title: 'Romance', bookCount: '559  books', image: 'assets/romance.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20,),
              Row(
                children: [
                  InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.arrow_back_ios_new_outlined,
                        color: blackColor,
                      )),
                  SizedBox(
                    width: 80,
                  ),
                  Text(
                    "Categories",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      color: blackColor,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Please choose category",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  color: blackColor,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Expanded(
                child: GridView(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10),
                  children: CategoriesItem.map((e) {
                    return Container(
                      height: 110,
                      width: 156,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                            image: AssetImage(e.image!), fit: BoxFit.cover),
                      ),
                      child: Stack(
                        children: [
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Container(
                              width: 156,
                              height: 100,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  gradient: LinearGradient(
                                      begin: Alignment.bottomCenter,
                                      end: Alignment.topCenter,
                                      colors: [
                                        blackColor.withOpacity(0.5),
                                        Colors.transparent,
                                      ])),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  e.title!,
                                  style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w800,color: whiteColor),
                                ),
                                SizedBox(height: 5,),
                                Text(
                                  e.bookCount!,
                                  style: TextStyle( fontWeight: FontWeight.w400,color: whiteColor),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    );
                  }).toList(),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
