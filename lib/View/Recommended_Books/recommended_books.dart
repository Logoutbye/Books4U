import 'package:flutter/material.dart';
import 'package:islamic_book_app/Model/data.dart';
import 'package:islamic_book_app/Utility/colors.dart';
import 'package:islamic_book_app/View/IslamicBooks/Books/book_detials.dart';
import 'package:islamic_book_app/View/IslamicBooks/Books/book_read.dart';

class RecommendedBooks extends StatefulWidget {
  RecommendedBooks({super.key});

  @override
  State<RecommendedBooks> createState() => _RecommendedBooksState();
}

class _RecommendedBooksState extends State<RecommendedBooks> {
  List<Book> MotivationalBooks = getMotivationalBookList();

  // List for History Book in All Alnguages
  List<Book> UrduHistoricBooks = getUrduHistoricBookList();
  // List<Book> PashtoHistoricBooks = getPashtoHistoricBookList();
  // List<Book> ArabicHistoricBooks = getArabicHistoricBookList();
  // List<Book> EnglishHistoricBooks = getEnglishHistoricBookList();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.kbgColor,
      appBar: AppBar(
        title: Text(
          "Dicover Books",
          style: TextStyle(color: AppColor.kTextColor),
        ),
        elevation: 0,
        backgroundColor: AppColor.kgreyColor,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: AppColor.kTextColor),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            width: 100,
            height: 400,
            padding: EdgeInsets.only(top: 16, left: 16, right: 16),
            decoration: BoxDecoration(
              color: AppColor.kgreyColor,
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(40),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 8,
                  blurRadius: 12,
                  offset: Offset(0, 3),
                ),
              ],
            ),
          ),

          //List viiew for book scrolling
          Expanded(
            child: Container(
              child: ListView(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                children: buildRecommendedBooks(),
              ),
            ),
          ),
        ],
      ),
    );
  }

  List<Widget> buildRecommendedBooks() {
    List<Widget> list = [];
    //  Recommended Books

    for (var i = 0; i < UrduHistoricBooks.length; i++) {
      list.add(buildRecommendedBook(UrduHistoricBooks[i], i));
    }
    return list;
  }

  Widget buildRecommendedBook(Book book, int index) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => BookRead(book: book),
          ));
        },
        child: Container(
          margin: EdgeInsets.only(left: 24, bottom: 40),
          height: 500,
          width: 202,
          child: Stack(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  color:AppColor.kgreyColor,
                  borderRadius: BorderRadius.circular(29),
                ),
              ),
              Image.asset(
                book.image,
                width: 100,
              ),
              Positioned(
                top: 35,
                right: 10,
                child: Column(
                  children: <Widget>[
                    IconButton(
                      icon: Icon(
                        Icons.favorite_border,
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 200,
                child: Container(
                  height: 85,
                  width: 202,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(left: 24),
                        child: RichText(
                          maxLines: 2,
                          text: TextSpan(
                            style: TextStyle(color: AppColor.kTextColor),
                            children: [
                              TextSpan(
                                text: book.title,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              TextSpan(
                                text: book.score,
                                style: TextStyle(
                                  color: AppColor.kTextColor,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Spacer(),
                      Row(
                        children: <Widget>[
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                              width: 101,
                              padding: EdgeInsets.symmetric(vertical: 10),
                              alignment: Alignment.center,
                              child: Text("Details"),
                            ),
                          ),
                          Expanded(
                            child: Text(
                              "Read",
                          ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
