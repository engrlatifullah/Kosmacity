import 'package:flutter/material.dart';
import 'package:kosmacity/screen/my_library_screen/widget/author_tab.dart';
import 'package:kosmacity/screen/my_library_screen/widget/books_tab.dart';

class MyLibrary extends StatefulWidget {
  const MyLibrary({Key? key}) : super(key: key);

  @override
  State<MyLibrary> createState() => _MyLibraryState();
}

class _MyLibraryState extends State<MyLibrary> with TickerProviderStateMixin{
  late TabController _controller;
  
  @override
  void initState() {
    _controller = TabController(length: 3, vsync: this);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(Icons.filter_list_alt),
                  Spacer(),
                  Icon(Icons.search),
                ],
              ),
              SizedBox(height: 10,),
              Text("My Library",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w700),),
              TabBar(
                isScrollable: false,
                controller: _controller,
                labelColor: Colors.black,
                unselectedLabelColor: Colors.grey,
                labelPadding: EdgeInsets.symmetric(horizontal: 10),
                tabs: [
                  Tab(text: "Books",),
                  Tab(text: "Audiobooks",),
                  Tab(text: "Author",),
              ],),
              SizedBox(height: 20,),
              Expanded(child: TabBarView(
                controller: _controller,
                children: [
                  BooksTab(),
                  Container(),
                  Author(),
                ],
              ),),
            ],
          ),
        ),
      ),
    );
  }
}
