// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:islamic_book_app/View/colors.dart';
import 'package:islamic_book_app/View/fathwa_books.dart';
import 'package:islamic_book_app/View/hadiths_books.dart';
import 'package:islamic_book_app/View/tafseer_books.dart';

import '../darsi_books.dart';
import '../fiqa_books.dart';
import 'eglish_historic_books.dart';


class EnglishBooksCategories extends StatefulWidget {
  const EnglishBooksCategories({super.key});

  @override
  State<EnglishBooksCategories> createState() => _EnglishBooksCategoriesState();
}

class _EnglishBooksCategoriesState extends State<EnglishBooksCategories>
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
      backgroundColor: AppColor.kbgColor,
      appBar: AppBar(
        title: Text("Select English Category",style: TextStyle(color: AppColor.kTextColor),),
        backgroundColor: AppColor.kbgColor,
         leading:  IconButton(
          icon: const Icon(Icons.arrow_back,color: AppColor.kTextColor,),
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
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        //first
                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => EnglishHistoricBooks()));
                          },
                          child: Container(
                            padding: EdgeInsets.all(20),
                            // ignore: sort_child_properties_last
                            child: SingleChildScrollView(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  IconButton(
                                    icon: ImageIcon(
                                      AssetImage("assets/images/feather.png"),
                                    ),
                                    iconSize: 72,
                                    onPressed: () {
                                      Navigator.of(context).push(MaterialPageRoute(
                                          builder: (context) => EnglishHistoricBooks()));
                                    },
                                  ),
                                  Text(
                                    "Historic Books",
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: AppColor.kTextColor,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(29),
                                  color: AppColor.kgreyColor,
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
                            padding: EdgeInsets.all(29),
                            child: SingleChildScrollView(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  IconButton(
                                    icon: ImageIcon(
                                      AssetImage("assets/images/hadees.png"),
                                    ),
                                    iconSize: 72,
                                    onPressed: () {
                                      Navigator.of(context).push(MaterialPageRoute(
                                          builder: (context) => HadithsBooks()));
                                    },
                                  ),
                                  Text(
                                    "Hadiths",
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: AppColor.kTextColor,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(29),
                                  color: AppColor.kgreyColor,
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
                            padding: EdgeInsets.all(29),
                            // ignore: sort_child_properties_last
                            child: SingleChildScrollView(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  IconButton(
                                    icon: ImageIcon(
                                      AssetImage("assets/images/book.png"),
                                    ),
                                    iconSize: 72,
                                    onPressed: () {
                                      Navigator.of(context).push(MaterialPageRoute(
                                          builder: (context) => TafseerBooks()));
                                    },
                                  ),
                                  Text(
                                    "Tafseer",
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: AppColor.kTextColor,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ),
                           decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(29),
                                  color: AppColor.kgreyColor,
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
                            Navigator.of(context).push(
                                MaterialPageRoute(builder: (context) => FiqaBooks()));
                          },
                          child: Container(
                            padding: EdgeInsets.all(29),
                            child: SingleChildScrollView(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  IconButton(
                                    icon: ImageIcon(
                                      AssetImage("assets/images/fiqha.png"),
                                    ),
                                    iconSize: 72,
                                    onPressed: () {
                                      Navigator.of(context).push(MaterialPageRoute(
                                          builder: (context) => FiqaBooks()));
                                    },
                                  ),
                                  Text(
                                    "Fiqha",
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: AppColor.kTextColor,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(29),
                                  color: AppColor.kgreyColor,
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
                            padding: EdgeInsets.all(29),
                            // ignore: sort_child_properties_last
                            child: SingleChildScrollView(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  IconButton(
                                    icon: ImageIcon(
                                      AssetImage("assets/images/fathwa.png"),
                                    ),
                                    iconSize: 72,
                                    onPressed: () {
                                      Navigator.of(context).push(MaterialPageRoute(
                                          builder: (context) => FathwaBooks()));
                                    },
                                  ),
                                  Text(
                                    "Fathwa Books",
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: AppColor.kTextColor,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(29),
                                  color: AppColor.kgreyColor,
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
                            padding: EdgeInsets.all(29),
                            child: SingleChildScrollView(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  IconButton(
                                    icon: ImageIcon(
                                      AssetImage("assets/images/darsi.png"),
                                    ),
                                    iconSize: 72,
                                    onPressed: () {
                                      Navigator.of(context).push(MaterialPageRoute(
                                          builder: (context) => DarsiBooks()));
                                    },
                                  ),
                                  Text(
                                    "Darsi Books",
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: AppColor.kTextColor,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(29),
                                  color: AppColor.kgreyColor,
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
