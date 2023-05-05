import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(
                Icons.arrow_back_ios_new_outlined,
                color: Colors.black,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Settings",
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.black,
                    fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: 10,
              ),
              ListTile(
                contentPadding: EdgeInsets.zero,
                leading: Container(
                  height: 80,
                  width: 80,
                  decoration:
                      BoxDecoration(color: Colors.grey, shape: BoxShape.circle),
                ),
                title: Text(
                  "Elizabeth Sanders",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.w700),
                ),
                subtitle: Text(
                  "elizabeth@mail.com",
                  style: TextStyle(fontWeight: FontWeight.w400),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "Account",
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: 20,
              ),
              CustomTile(
                leading: Icon(Icons.lock, color: Colors.white),
                title: "Support and Faq’s",
                onTap: () {},
              ),
              CustomTile(
                leading: Icon(
                  Icons.notifications,
                  color: Colors.white,
                ),
                title: "terms and  Policies ",
                onTap: () {},
              ),
              CustomTile(
                leading: Icon(
                  Icons.front_hand_rounded,
                  color: Colors.white,
                ),
                title: "Subscription",
                onTap: () {},
              ),
              CustomTile(
                leading: Icon(
                  Icons.logout,
                  color: Colors.white,
                ),
                title: "Sign Out",
                onTap: () {},
              ),
              Spacer(),
              Center(
                child: Text(
                  "Delete account",
                  style: TextStyle(decoration: TextDecoration.underline),
                ),
              ),
              Spacer(),
              Center(
                child: Text(
                  "V-0-1-KC",
                  style: TextStyle(decoration: TextDecoration.underline),
                ),
              ),
              SizedBox(height: 5,),
              Center(
                child: Text(
                  "KC Kosmocityt",
                  style: TextStyle(decoration: TextDecoration.underline),
                ),
              ),
              SizedBox(height: 20,),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomTile extends StatelessWidget {
  final Widget? leading;
  final String? title;
  final VoidCallback? onTap;

  const CustomTile({
    Key? key,
    this.leading,
    this.title,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
        children: [
          Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: leading,
            ),
          ),
          SizedBox(
            width: 30,
          ),
          Text(
            title!,
            style: TextStyle(
                fontWeight: FontWeight.w400, fontSize: 17, color: Colors.black),
          ),
          Spacer(),
          InkWell(
            onTap: onTap,
            child: Icon(
              Icons.arrow_forward_ios_outlined,
              color: Colors.grey,
            ),
          )
        ],
      ),
    );
  }
}
