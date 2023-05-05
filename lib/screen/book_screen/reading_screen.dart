import 'package:flutter/material.dart';

class Reading extends StatelessWidget {
  const Reading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Row(
                children: [
                  InkWell(
                      onTap: (){
                        Navigator.pop(context);
                      },
                      child: Icon(Icons.arrow_back_ios_new_outlined)),
                  Spacer(),
                  Icon(Icons.abc),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(Icons.search),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(Icons.bookmark_border_outlined),
                  SizedBox(
                    width: 10,
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.all(20),
                child: ListView(
                  shrinkWrap: true,
                  children: [
                    Text(
                        "Meet Eleanor Oliphant: She struggles with appropriate social skills and tends to say exactly what she’s thinking. Nothing is missing in her carefully timetabled life of avoiding social interactions, where weekends are punctuated by frozen pizza, vodka, and phone chats with Mummy. ",style: TextStyle(fontSize: 15),),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                        "Meet Eleanor Oliphant: She struggles with appropriate social skills and tends to say exactly what she’s thinking. Nothing is missing in her carefully timetabled life of avoiding social interactions, where weekends are punctuated by frozen pizza, vodka, and phone chats with Mummy. ",style: TextStyle(fontSize: 15),),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                        "Meet Eleanor Oliphant: She struggles with appropriate social skills and tends to say exactly what she’s thinking. Nothing is missing in her carefully timetabled life of avoiding social interactions, where weekends are punctuated by frozen pizza, vodka, and phone chats with Mummy. ",style: TextStyle(fontSize: 15),),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                        "Meet Eleanor Oliphant: She struggles with appropriate social skills and tends to say exactly what she’s thinking. Nothing is missing in her carefully timetabled life of avoiding social interactions, where weekends are punctuated by frozen pizza, vodka, and phone chats with Mummy. ",style: TextStyle(fontSize: 15),),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
              Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(onPressed: (){}, child: Text("Previous page",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w400),),),
                  Text("12 of 358",style: TextStyle(fontWeight: FontWeight.w600),),
                  TextButton(onPressed: (){}, child: Text("Next episode",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w400),),),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
