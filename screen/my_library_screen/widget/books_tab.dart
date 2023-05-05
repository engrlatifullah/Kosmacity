import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class BooksTab extends StatefulWidget {
  const BooksTab({Key? key}) : super(key: key);

  @override
  State<BooksTab> createState() => _BooksTabState();
}

class _BooksTabState extends State<BooksTab> {
  bool isTap = false;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (_, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 5),
          child: Row(
            children: [
              Container(
                height: 100,
                width: 70,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Abstract Art in The",
                    style: TextStyle(
                        fontWeight: FontWeight.w500, color: Colors.black),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Armando Newman",
                    style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                        color: Colors.grey),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: 180,
                    child: LinearPercentIndicator(
                      padding: EdgeInsets.only(right: 10),
                      lineHeight: 3,
                      alignment: MainAxisAlignment.start,
                      percent: 0.67,
                      progressColor: Color(0xFFFF9500),
                      trailing: Text("67%"),
                      barRadius: Radius.circular(10),
                    ),
                  ),
                ],
              ),
              Spacer(),
              InkWell(
                  onTap: () {
                    setState(() {
                      if (isTap == false) {
                        isTap = true;
                      } else {
                        isTap = false;
                      }
                    });
                  },
                  child: Icon(
                    isTap ? Icons.favorite : Icons.favorite_border,color: isTap ? Colors.red : Colors.grey,
                  ),)
            ],
          ),
        );
      },
      separatorBuilder: (BuildContext context, int index) {
        return Divider(
          indent: 80,
        );
      },
      itemCount: 20,
    );
  }
}
