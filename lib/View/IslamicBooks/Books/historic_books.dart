import 'package:flutter/material.dart';
import 'package:islamic_book_app/Model/data.dart';
import 'package:islamic_book_app/Utility/colors.dart';
import 'package:islamic_book_app/View/IslamicBooks/Books/book_detials.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class HistoricBooks extends StatefulWidget {
  String Category;

  HistoricBooks({required this.Category, super.key});

  @override
  State<HistoricBooks> createState() => _HistoricBooksBooksState();
}

class _HistoricBooksBooksState extends State<HistoricBooks> {
  String type = '';
  List<Book> UrduHistoricBooks = getUrduHistoricBookList();
  List<Book> PashtoHistoricBooks = getPashtoHistoricBookList();
  List<Book> ArabicHistoricBooks = getArabicHistoricBookList();
  List<Book> EnglishHistoricBooks = getEnglishHistoricBookList();
  @override
  void initState() {
    type = widget.Category;
    print("build_books::${type}");

    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.kbgColor,
      appBar: AppBar(
        title: Text(
          "Historic Books",
          style: TextStyle(color: AppColor.kTextColor),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
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
            padding: EdgeInsets.only(top: 16, left: 16, right: 16),
            decoration: BoxDecoration(
              color: Colors.white,
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

            // below app bar
            //   child: Column(
            //     crossAxisAlignment: CrossAxisAlignment.start,
            //     children: [
            //       SizedBox(
            //         height: 16,
            //       ),
            //     ],
            //   ),
            //
          ),

          //List viiew for book scrolling
          Expanded(
            child: Container(
              child: ListView(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                children: buildBooks(),
              ),
            ),
          ),

          // more books section
          Container(
            decoration: BoxDecoration(
              color: AppColor.kgreyColor,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40), ),
            ),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(24),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "More Books",
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            "Show all",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              // color: kPrimaryColor,
                            ),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Icon(
                            Icons.arrow_forward,
                            size: 18,
                            // color: kPrimaryColor,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                //call Books Form Fire base
                Container(
                  height: 200,
                  margin: EdgeInsets.only(bottom: 16),
                  child: ListView(
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    // children: buildAuthors(),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  List<Widget> buildBooks() {
    List<Widget> list = [];

    if (type == 'buildUrduHistoricBooks') {
      for (var i = 0; i < UrduHistoricBooks.length; i++) {
        list.add(buildBook(UrduHistoricBooks[i], i));
      }
    } else if (type == 'buildPashtoHistoricBooks') {
      for (var i = 0; i < PashtoHistoricBooks.length; i++) {
        list.add(buildBook(PashtoHistoricBooks[i], i));
      }
    } else if (type == 'buildEnglishHistoricBooks') {
      for (var i = 0; i < EnglishHistoricBooks.length; i++) {
        list.add(buildBook(EnglishHistoricBooks[i], i));
      }
    } else if (type == 'buildArabicHistoricBooks') {
      for (var i = 0; i < ArabicHistoricBooks.length; i++) {
        list.add(buildBook(ArabicHistoricBooks[i], i));
      }
    }
    return list;
  }

  Widget buildBook(Book book, int index) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => SfPdfViewer.asset(book.path),
        ));
      },
      child: Container(
        margin:
            EdgeInsets.only(right: 32, left: index == 0 ? 16 : 0, bottom: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Expanded(
              child: Container(
                // width: 250,
                // width: MediaQuery.of(context).size.width * 0.8,

                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 8,
                      blurRadius: 12,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                margin: EdgeInsets.only(
                  bottom: 1,
                  top: 4,
                ),
                child: Hero(
                  tag: book.title,
                  child: Image.asset(
                    book.image,
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 30,
              // height: 12,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.6,
              child: Column(
                children: [
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          book.title,
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        // SizedBox(width: 11,),
                        GestureDetector(
                          onTap: (() {
                            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>BookDetail(book: book)));
                          }),
                          child: Text(
                            "Details",
                            style: TextStyle(
                              fontSize: 14,
                              color: AppColor.kIconOnPressColor,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ]),
                      SizedBox(height: 8,)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
