// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:islamic_book_app/View/IslamicBooks/Books/darsi_books.dart';
import 'package:islamic_book_app/View/IslamicBooks/Books/fathwa_books.dart';
import 'package:islamic_book_app/View/IslamicBooks/Books/fiqa_books.dart';
import 'package:islamic_book_app/View/IslamicBooks/Books/hadiths_books.dart';

import 'package:islamic_book_app/View/IslamicBooks/Books/tafseer_books.dart';
import 'package:islamic_book_app/View/IslamicBooks/Books/historic_books.dart';

class BooksCategories extends StatefulWidget {
  String language;
  BooksCategories({required this.language, super.key});

  @override
  State<BooksCategories> createState() => _BooksCategoriesState();
}

class _BooksCategoriesState extends State<BooksCategories>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  String bookLanguage = '';
  @override
  void initState() {
    bookLanguage = widget.language;
    super.initState();
    _controller = AnimationController(vsync: this);
    print("Book_language::$bookLanguage");

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
                                builder: (context) => HistoricBooks(Category: bookLanguage == 'Urdu'?'buildUrduHistoricBooks'
                                                   :bookLanguage =='Arabic'? 'buildArabicHistoricBooks'
                                                    :bookLanguage == 'English'? 'buildEnglishHistoricBooks'
                                                     :bookLanguage == 'Pahto'? 'buildPashtoHistoricBooks'
                                                      :""
                                )));
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
                                                  HistoricBooks(Category: 
                                                  bookLanguage == 'Urdu'? 'buildUrduHistoricBooks'
                                                   :bookLanguage =='Arabic'? 'buildArabicHistoricBooks'
                                                    :bookLanguage == 'English'? 'buildEnglishHistoricBooks'
                                                     :bookLanguage == 'Pashto'? 'buildPashtoHistoricBooks'
                                                      :""
                                )));
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
                                  //hadits
                                  Text(
                                    bookLanguage == 'Urdu'? 'احادیث'
                                     :bookLanguage == 'Pashto'? 'حدیثونه'
                                      :bookLanguage == "English"? 'Hadiths'
                                       :bookLanguage == "Arabic"? 'الأحاديث':'',
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
                                  //"Tafseer",
                                  Text(
                                    bookLanguage == 'Urdu' ? 'تفسیر'
                                     :bookLanguage == 'English' ? 'Tafseer'
                                      :bookLanguage == 'Pashto' ? 'تفسیر'
                                       :bookLanguage == 'Arabic' ? 'التفسير':'',
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
                                  // "Fiqha",

                                  Text(
                                    bookLanguage == 'Urdu'?'فقه'
                                     :bookLanguage == 'Pashto'?'فقه'
                                      :bookLanguage == 'English'?'Jurisprudence'
                                       :bookLanguage == 'Arabic'?'فقه':'',
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
                                  //Fathwa Books
                                  Text(
                                    bookLanguage == 'Urdu'?'فتویٰ'
                                     :bookLanguage == 'Pashto'?'فتوا'
                                      :bookLanguage == 'English'?'Fathwa'
                                       :bookLanguage == 'Arabic'?'فتوى':'',                                    style: TextStyle(
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
                                  //"Darsi Books",

                                  Text(
                                    bookLanguage == 'Urdu'?'درسی'
                                     :bookLanguage == 'Pashto'?'درسي'
                                      :bookLanguage == 'English'?'Darcy'
                                       :bookLanguage == 'Arabic'?'دارسي':'',
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
