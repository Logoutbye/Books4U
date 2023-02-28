import 'package:flutter/material.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:islamic_book_app/Utility/colors.dart';
import 'package:islamic_book_app/View/Firebase/Books/firebase_book_read.dart';

class SearchScreen extends StatefulWidget {
  String Category;
  String MotivationalCategory;

  SearchScreen({required this.Category, required this.MotivationalCategory});
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final _searchController = TextEditingController();
  Future<List<Result>>? _searchResults;

  var type;

  var MotivationalType;
  
  var downloadUrl;

  @override
  void initState() {
    type = widget.Category;
    MotivationalType = widget.MotivationalCategory;
    _performSearch("Books/");
    // TODO: implement initState
    super.initState();
  }

  void _performSearch(String query) {
    setState(() {
      _searchResults = _searchFolder(query);
    });
  }

  Future<List<Result>> _searchFolder(String query) async {
    // Get a reference to the Firebase storage bucket
    final storage = FirebaseStorage.instance;

    var folderRef =MotivationalType=='NavigateToMotivationalBooks'? storage.ref().child('Books/Motivational/')
       :type=='buildUrduHistoricBooks'?  storage.ref().child('Books/Islamic Books/Urdu/general/')
    :type=='buildUrduDarsiBooks'? storage.ref().child('Books/Islamic Books/Urdu/Darsi/')
    :type=='buildUrduFathwaBooks'? storage.ref().child('Books/Islamic Books/Urdu/Fathwa/')
    :type=='buildUrduFiqaBooks'?  storage.ref().child('Books/Islamic Books/Urdu/Fiqa/')
    :type=='buildUrduTafseerBooks'?  storage.ref().child('Books/Islamic Books/Urdu/Tafseer/')
    :type=='buildUrduHaditsBooks'? storage.ref().child('Books/Islamic Books/Urdu/Hadits/')
    : storage.ref().child('Books/') ;
final motivationalResult = await folderRef.listAll();

for (final item in motivationalResult.items) {
  // Get the download URL for the file
   downloadUrl = await item.getDownloadURL();
  print("/////////////////////////////////////////////////${downloadUrl}");
  // Do something with the download URL...
}


    // Retrieve a list of all files within the folder
    final folderFiles = await folderRef.listAll();

    // Filter the files to those that match the search query
    final searchResults = folderFiles.items
        .where((file) => file.name.contains(query))
        .map((file) => Result(name: file.name, fullPath: file.fullPath, ))
        .toList();
    return searchResults;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.kbgColor,
      appBar: AppBar(
        elevation: 0,
        title: Text('Search for Books'),
                backgroundColor: AppColor.kgreyColor,
                foregroundColor: AppColor.kTextColor,

      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: _searchController,
              
              decoration: new InputDecoration(
                
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: AppColor.kTextColor, width: 1),
            ),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: AppColor.kgreyColor, width: 1),
            ),
            hintText: 'Enter Name',
        ),
              // decoration: InputDecoration(
              //   hintText: 'Enter search query',
                
              // ),
              onSubmitted: _performSearch,
            ),
            SizedBox(height: 16.0),
            Expanded(
              child: FutureBuilder<List<Result>>(
                future: _searchResults,
                builder: (context, snapshot) {
                  if (snapshot == null) {
                    return Center(child: Text("Sorry"));
                  } else if (snapshot.connectionState ==
                      ConnectionState.waiting) {
                    return Center(child: CircularProgressIndicator());
                  } else if (snapshot.hasError) {
                    return Center(
                        child: Text('An error occurred while searching'));
                  } else if (snapshot.data!.isEmpty) {
                    return Center(child: Text('No results found'));
                  } else {
                    return ListView.builder(
                      itemCount: snapshot.data!.length,
                      itemBuilder: (context, index) {
                        final result = snapshot.data![index];
                        return Container(
                            margin: EdgeInsets.all(12),
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          color: AppColor.kgreyColor,
                          border: Border.all(width: 1),
                          borderRadius: BorderRadius.all(Radius.circular(29))),
                          child: ListTile(
                          leading: Icon(Icons.insert_drive_file),

                            title: Text(result.name),
                            // subtitle: Text(result.fullPath),
                            onTap: () {
                              // Navigate to a screen to display the file
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => FirebaseBookRead(
                                      title: result.name, url: downloadUrl)));
                            },
                          ),
                        );
                      },
                    );
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Result {
  final String name;
  final String fullPath;

  Result({required this.name, required this.fullPath, });
}
