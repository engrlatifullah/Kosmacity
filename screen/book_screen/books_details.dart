import 'package:flutter/material.dart';
import 'package:kosmacity/screen/book_screen/reading_screen.dart';

class BookDetails extends StatelessWidget {
  const BookDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: ListView(
            children: [
              Container(
                width: double.infinity,
                height: 350,
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        InkWell(
                          onTap: (){
                            Navigator.pop(context);
                          },
                          child: Icon(
                            Icons.arrow_back_ios_new_outlined,
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Books",
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.w700),
                        ),
                        Spacer(),
                        Icon(Icons.file_upload_outlined),
                      ],
                    ),
                    Spacer(),
                    Container(
                      height: 230,
                      width: 153,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: Text(
                  "Peace in His Life",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                ),
              ),
              Divider(),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CustomButton(
                    title: "Preview",
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (_){
                        return Reading();
                      }),);
                    },
                  ),
                  CustomButton(
                    title: "Read",
                    onTap: () {},
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              ListTile(
                contentPadding: EdgeInsets.zero,
                leading: CircleAvatar(
                  backgroundColor: Colors.grey,
                ),
                title: Text(
                  'Gerard Fabiano',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                trailing: InkWell(
                  onTap: (){},
                  child: Container(
                    height: 30,
                    width: 80,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Text(
                        "Follow",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Summary",
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: 20,
              ),
              RichText(
                text: TextSpan(
                  text:
                      "By 1939, Europe is on fire and England is at war. From her home in idyllic Hampshire, Alex makes her way to London as a volunteer in ….",
                  style: TextStyle(color: Colors.black, fontSize: 15),
                  children: [
                    TextSpan(
                      text: 'read more',
                      style: TextStyle(color: Colors.blue, fontSize: 15),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Chip(label: Text("Drama",style: TextStyle(color: Colors.white),),),
                  SizedBox(width: 10,),
                  Chip(label: Text("Romance",style: TextStyle(color: Colors.white),),),
                  SizedBox(width: 10,),
                  Chip(label: Text("Mysteries",style: TextStyle(color: Colors.white),),),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Text(
                    "Featured Books",
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                  ),
                  Spacer(),
                  Text(
                    "See all",
                    style: TextStyle(
                        fontWeight: FontWeight.w500, color: Colors.blue),
                  ),
                  SizedBox(width: 5,),
                  Icon(Icons.arrow_forward_ios_outlined,color: Colors.grey,)
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
                                fontWeight: FontWeight.w400, color: Colors.grey),
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

class CustomButton extends StatelessWidget {
  final String? title;
  final VoidCallback? onTap;

  const CustomButton({
    Key? key,
    this.title,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 50,
        width: 120,
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Text(
            title!,
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
        ),
      ),
    );
  }
}
