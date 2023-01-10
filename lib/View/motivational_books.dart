import 'dart:convert';

import 'package:flutter/material.dart';
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
      backgroundColor: Colors.green,

        appBar: AppBar(
          title: Text("Motivational Books"),
          backgroundColor: Colors.green,
        ),
        body: FutureBuilder<String>(
          future:
              DefaultAssetBundle.of(context).loadString("AssetManifest.json"),
          builder: (context, item) {
            if (item.hasData) {
              Map? jsonMap = jsonDecode(item.data!);
              List? books = jsonMap?.keys.toList();

              final filtered = jsonMap?.keys
                  .where(
                      (path) => path.startsWith('assets/motivational_books/'))
                  .toList();
              print("khakha$filtered");

              return ListView.builder(
                itemCount: filtered?.length,
                itemBuilder: (context, index) {
                  var path = filtered![index].toString();
                  var title = path.split("/").last.toString();
                  // title = title.replaceAll("%20", " ") ;
                  title = title.split(".").first;
                  return Container(
                    padding: EdgeInsets.all(8),
                    margin: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        border: Border.all(width: 1),
                        borderRadius: BorderRadius.circular(8)),
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
        ));
  }
}
