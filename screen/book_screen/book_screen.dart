import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'books_details.dart';

class Book extends StatelessWidget {
  const Book({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ListView(
        children: [
          SizedBox(
            height: 20,
          ),
          Center(
            child: Text(
              "Books",
              style: TextStyle(
                  fontSize: 18, fontWeight: FontWeight.w500, color: Colors.black),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 100,
            width: double.infinity,
            child: Image.asset(
              "image/1 98.png",
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Featured Books",
                  style: TextStyle(
                      fontSize: 18, fontWeight: FontWeight.w500, color: Colors.black),
                ),
                SizedBox(
                  height: 10,
                ),
                ...List.generate(3, (index) => Container(
                  height: 260,
                  width: double.infinity,
                  margin: EdgeInsets.symmetric(vertical: 5),
                  child: ListView.builder(
                    itemCount: 6,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (_){
                              return BookDetails();
                            }),);
                          },
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 180,
                                width: 120,
                                decoration: BoxDecoration(
                                    color: Colors.grey,
                                    borderRadius: BorderRadius.circular(10)
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Jan Rombouts\nEen Ren",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w500),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Mercartorfonds",
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    color: Colors.grey),
                              )
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
