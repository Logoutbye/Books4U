import 'package:flutter/material.dart';
import 'package:islamic_book_app/Model/data.dart';
import 'package:islamic_book_app/Utility/colors.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class BookRead extends StatelessWidget {

  final Book book;
  const BookRead({super.key, required this.book});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${book.title}",
        style: TextStyle(color: AppColor.kTextColor),),
        backgroundColor: AppColor.kgreyColor,
        leading: IconButton(
          icon: Icon(Icons.arrow_back,color: AppColor.kTextColor,),
          onPressed: () {
            Navigator.pop(context);
          },)
      ),
      body: Container(
        child: SfPdfViewer.asset(book.path),
      ),
    );
  }
}