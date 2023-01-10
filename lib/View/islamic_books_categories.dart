// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:islamic_book_app/View/historic_books.dart';
import 'package:islamic_book_app/View/hadiths_books.dart';
import 'package:islamic_book_app/View/tafseer_books.dart';

import 'fiqa_books.dart';

class IslamicBooksCategories extends StatefulWidget {
  const IslamicBooksCategories({super.key});

  @override
  State<IslamicBooksCategories> createState() => _IslamicBooksCategoriesState();
}

class _IslamicBooksCategoriesState extends State<IslamicBooksCategories>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(title: Text("Select Category"),
      backgroundColor: Colors.green,), 
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        //first
                        InkWell(
                          onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>HistoricBooks()));

                          },
                          child: Container(
                            padding: EdgeInsets.all(8),
                            // ignore: sort_child_properties_last
                            child: SingleChildScrollView(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  IconButton(
                              icon: ImageIcon(AssetImage("assets/images/feather.png"),),
                                    iconSize: 72,
                                    onPressed: () {
                                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>HistoricBooks()));
                                    },
                                  ),
                                  Text(
                                    "Historic Books",
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: Color.fromARGB(255, 255, 255, 255),
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                                border: Border.all(
                                  color: Color.fromARGB(255, 255, 255, 255)
                                  )),
                            height: MediaQuery.of(context).size.height / 5,
                            width: MediaQuery.of(context).size.width / 2.5,
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 20,
                        ),
                        //second
                        InkWell(
                          onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>HadithsBooks()));
                          },
                          child: Container(
                            padding: EdgeInsets.all(8),
                            child: SingleChildScrollView(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  IconButton(
                              icon: ImageIcon(AssetImage("assets/images/hadees.png"),),
                                    iconSize: 72,
                                    onPressed: () {
                                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>HadithsBooks()));
                                    },
                                  ),
                                  Text(
                                    "Hadiths",
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: Color.fromARGB(255, 255, 255, 255),
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ),
                            decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(color: Colors.white)),
                            height: MediaQuery.of(context).size.height / 5,
                            width: MediaQuery.of(context).size.width / 2.5,
                          ),
                        )
                      ],
                    ),
          SizedBox(),
           Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        //third
                        InkWell(
                          onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>TafseerBooks()));

                          },
                          child: Container(
                            padding: EdgeInsets.all(8),
                            // ignore: sort_child_properties_last
                            child: SingleChildScrollView(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  IconButton(
                              icon: ImageIcon(AssetImage("assets/images/book.png"),),
                                    iconSize: 72,
                                    onPressed: () {
                                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>TafseerBooks()));
                                    },
                                  ),
                                  Text(
                                    "Tafseer",
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: Color.fromARGB(255, 255, 255, 255),
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                                border: Border.all(
                                  color: Color.fromARGB(255, 255, 255, 255)
                                  )),
                            height: MediaQuery.of(context).size.height / 5,
                            width: MediaQuery.of(context).size.width / 2.5,
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 20,
                          height: MediaQuery.of(context).size.height/4,
                        ),
                        //fourth
                        InkWell(
                          onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>FiqaBooks()));
                          },
                          child: Container(
                            padding: EdgeInsets.all(8),
                            child: SingleChildScrollView(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  IconButton(
                              icon: ImageIcon(AssetImage("assets/images/fiqha.png"),),
                                    iconSize: 72,
                                    onPressed: () {
                                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>FiqaBooks()));
                                    },
                                  ),
                                  Text(
                                    "Fiqha",
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: Color.fromARGB(255, 255, 255, 255),
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ),
                            decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(color: Colors.white)),
                            height: MediaQuery.of(context).size.height / 5,
                            width: MediaQuery.of(context).size.width / 2.5,
                          ),
                        )
                      ],
                    ),
        ]),
      ),     
    );
  }
}