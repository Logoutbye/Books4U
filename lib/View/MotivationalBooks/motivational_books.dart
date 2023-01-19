import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:islamic_book_app/Utility/colors.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class MotivationalBooks extends StatefulWidget {
  const MotivationalBooks({super.key});

  @override
  State<MotivationalBooks> createState() => _MotivationalBooksState();
}

class _MotivationalBooksState extends State<MotivationalBooks> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text(
            "Motivational Books",
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
          child: Stack(children: [
            Center(
              child: FutureBuilder<String>(
                future: DefaultAssetBundle.of(context)
                    .loadString("AssetManifest.json"),
                builder: (context, item) {
                  if (item.hasData) {
                    Map? jsonMap = jsonDecode(item.data!);
                    List? books = jsonMap?.keys.toList();

                    final filtered = jsonMap?.keys
                        .where((path) =>
                            path.startsWith('assets/Motivational_Book/'))
                        .toList();

                    return ListView.builder(
                      itemCount: filtered?.length,
                      itemBuilder: (context, index) {
                        var path = filtered![index].toString();
                        var title = path.split("/").last.toString();
                        // title = title.replaceAll("%20", " ") ;
                        title = title.split(".").first;
                        return Container(
                          padding: EdgeInsets.all(8),
                          margin: EdgeInsets.fromLTRB(20, 8, 20, 8),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(29),
                            color: AppColor.kgreyColor,
                            // border: Border.all(color: Colors.grey)
                          ),
                          child: ListTile(
                            title: Text(title),
                            // subtitle: Text("path: $path"),
                            leading: Icon(Icons.menu_book_rounded),
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => SfPdfViewer.asset(path),
                              ));
                            },
                          ),
                        );
                      },
                    );
                  } else {
                    return Text("Sorry No Books Found");
                  }
                },
              ),
            ),
            Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                    padding: EdgeInsets.all(8),
                    margin: EdgeInsets.fromLTRB(20, 8, 20, 8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(29),
                      color: AppColor.kgreyColor,
                      // border: Border.all(color: Colors.grey)
                    ),
                    child: ListTile(
                        title: Text(
                          "More Books",
                          style: TextStyle(color: AppColor.kTextColor),
                        ),
                        // subtitle: Text("path: $path"),
                        leading: ImageIcon(
                          AssetImage("assets/images/ebook.png"),
                        ),
                        onTap: () {})))
          ]),
        ));
  }
}