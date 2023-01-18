import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class FiqaBooks extends StatefulWidget {
  const FiqaBooks({super.key});

  @override
  State<FiqaBooks> createState() => _FiqaBooksState();
}

class _FiqaBooksState extends State<FiqaBooks> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text("Fiqa Books",style: TextStyle(color: Colors.black),),
          backgroundColor: Colors.white,
          leading:  IconButton(
          icon: const Icon(Icons.arrow_back,color: Colors.black,),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        ),
        body: FutureBuilder<String>(
          future:
              DefaultAssetBundle.of(context).loadString("AssetManifest.json"),
          builder: (context, item) {

            if (item.hasData) {
              Map? jsonMap = jsonDecode(item.data!);
              List? books = jsonMap?.keys.toList();

              final filtered = jsonMap?.keys
                  .where((path) => path.startsWith('assets/islamic_books/Urdu/fiqa/'))
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
                      color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(29)),
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