// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:islamic_book_app/View/IslamicBooks/Urdu_Books/darsi_books.dart';
import 'package:islamic_book_app/View/IslamicBooks/Urdu_Books/fathwa_books.dart';
import 'package:islamic_book_app/View/IslamicBooks/Urdu_Books/fiqa_books.dart';
import 'package:islamic_book_app/View/IslamicBooks/Urdu_Books/hadiths_books.dart';
import 'package:islamic_book_app/View/IslamicBooks/Urdu_Books/urdu_historic_books.dart';

import 'package:islamic_book_app/View/IslamicBooks/Urdu_Books/tafseer_books.dart';

class UrduBooksCategories extends StatefulWidget {
  String language;
  UrduBooksCategories({required this.language, super.key});

  @override
  State<UrduBooksCategories> createState() => _UrduBooksCategoriesState();
}

class _UrduBooksCategoriesState extends State<UrduBooksCategories>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  String bookLanguage = '';

  @override
  void initState() {
    bookLanguage = widget.language;
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
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "Select ${widget.language} Category",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/bg.jpg'),
            alignment: Alignment.topCenter,
            fit: BoxFit.fill,
          ),
        ),
        child: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(8, 32, 8, 8),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // Historical and hadis books
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        //Hostorical books conatianer
                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => UrduHistoricBooks()));
                          },
                          child: Container(
                            padding: EdgeInsets.all(8),
                            child: SingleChildScrollView(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  IconButton(
                                    padding: EdgeInsets.fromLTRB(8, 24, 8, 8),
                                    icon: ImageIcon(
                                      AssetImage("assets/images/feather.png"),
                                    ),
                                    iconSize: 72,
                                    onPressed: () {
                                      Navigator.of(context).push(
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  UrduHistoricBooks()));
                                    },
                                  ),
                                  Text(
                                    bookLanguage == 'Urdu'
                                        ? 'تاریخی کتب'
                                        : bookLanguage == 'English'
                                            ? 'Historical Books'
                                            : bookLanguage == 'Pashto'
                                                ? 'تاریخي کتابونه'
                                                : bookLanguage == 'Arabic'
                                                    ? 'كتب تاريخية'
                                                    : '',
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(29),
                              color: Colors.grey[200],
                              // border: Border.all(color: Colors.grey)
                            ),
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
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => HadithsBooks()));
                          },
                          child: Container(
                            padding: EdgeInsets.all(8),
                            child: SingleChildScrollView(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  IconButton(
                                    padding: EdgeInsets.fromLTRB(8, 24, 8, 8),
                                    icon: ImageIcon(
                                      AssetImage("assets/images/hadees.png"),
                                    ),
                                    iconSize: 72,
                                    onPressed: () {
                                      Navigator.of(context).push(
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  HadithsBooks()));
                                    },
                                  ),
                                  Text(
                                    "Hadiths",
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(29),
                              color: Colors.grey[200],
                              // border: Border.all(color: Colors.grey)
                            ),
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
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => TafseerBooks()));
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
                                    padding: EdgeInsets.fromLTRB(8, 24, 8, 8),
                                    icon: ImageIcon(
                                      AssetImage("assets/images/book.png"),
                                    ),
                                    iconSize: 72,
                                    onPressed: () {
                                      Navigator.of(context).push(
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  TafseerBooks()));
                                    },
                                  ),
                                  Text(
                                    "Tafseer",
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(29),
                              color: Colors.grey[200],
                              // border: Border.all(color: Colors.grey)
                            ),
                            height: MediaQuery.of(context).size.height / 5,
                            width: MediaQuery.of(context).size.width / 2.5,
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 20,
                          height: MediaQuery.of(context).size.height / 4,
                        ),
                        //fourth
                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => FiqaBooks()));
                          },
                          child: Container(
                            padding: EdgeInsets.all(8),
                            child: SingleChildScrollView(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  IconButton(
                                    padding: EdgeInsets.fromLTRB(8, 24, 8, 8),
                                    icon: ImageIcon(
                                      AssetImage("assets/images/fiqha.png"),
                                    ),
                                    iconSize: 72,
                                    onPressed: () {
                                      Navigator.of(context).push(
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  FiqaBooks()));
                                    },
                                  ),
                                  Text(
                                    "Fiqha",
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(29),
                              color: Colors.grey[200],
                              // border: Border.all(color: Colors.grey)
                            ),
                            height: MediaQuery.of(context).size.height / 5,
                            width: MediaQuery.of(context).size.width / 2.5,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        //fifth
                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => FathwaBooks()));
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
                                    padding: EdgeInsets.fromLTRB(8, 24, 8, 8),
                                    icon: ImageIcon(
                                      AssetImage("assets/images/fathwa.png"),
                                    ),
                                    iconSize: 72,
                                    onPressed: () {
                                      Navigator.of(context).push(
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  FathwaBooks()));
                                    },
                                  ),
                                  Text(
                                    "Fathwa Books",
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(29),
                              color: Colors.grey[200],
                              // border: Border.all(color: Colors.grey)
                            ),
                            height: MediaQuery.of(context).size.height / 5,
                            width: MediaQuery.of(context).size.width / 2.5,
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 20,
                        ),
                        //Sixth
                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => DarsiBooks()));
                          },
                          child: Container(
                            padding: EdgeInsets.all(8),
                            child: SingleChildScrollView(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  IconButton(
                                    padding: EdgeInsets.fromLTRB(8, 24, 8, 8),
                                    icon: ImageIcon(
                                      AssetImage("assets/images/darsi.png"),
                                    ),
                                    iconSize: 72,
                                    onPressed: () {
                                      Navigator.of(context).push(
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  DarsiBooks()));
                                    },
                                  ),
                                  Text(
                                    "Darsi Books",
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(29),
                              color: Colors.grey[200],
                              // border: Border.all(color: Colors.grey)
                            ),
                            height: MediaQuery.of(context).size.height / 5,
                            width: MediaQuery.of(context).size.width / 2.5,
                          ),
                        )
                      ],
                    ),
                    SizedBox(),
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}
