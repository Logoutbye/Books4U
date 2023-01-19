import 'package:flutter/material.dart';
import '../Arabic_Books/arabic_book_categories.dart';
import '../English_Books/english_books_categories.dart';
import '../Pashto_Books/pashto_books_categories.dart';
import '../Urdu_Books/urdu_books_categories.dart';

class Languages extends StatefulWidget {
  const Languages({super.key});

  @override
  State<Languages> createState() => _LanguagesState();
}

class _LanguagesState extends State<Languages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "Select Language",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
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
        // width: double.infinity,
        decoration: BoxDecoration(
          //color: Colors.red,
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
              //padding: EdgeInsets.only(left: 5, right: 5, top: 32),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        //Urdu books Container
                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => UrduBooksCategories(
                                      language: 'Urdu',
                                    )));
                          },
                          child: Container(
                            padding: EdgeInsets.all(10),
                            // ignore: sort_child_properties_last
                            child: SingleChildScrollView(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  IconButton(
                                    icon: ImageIcon(
                                      AssetImage("assets/images/urdu.png"),
                                    ),
                                    iconSize: 72,
                                    onPressed: () {
                                      Navigator.of(context).push(
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  UrduBooksCategories(
                                                    language: 'Urdu',
                                                  )));
                                    },
                                  ),
                                  Text(
                                    "Urdu Books",
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
                            height: MediaQuery.of(context).size.height / 4.5,
                            width: MediaQuery.of(context).size.width / 2.3,
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 40,
                        ),
                        //Pashto books container
                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) =>
                                    UrduBooksCategories(language: 'Pashto')));
                          },
                          child: Container(
                            //padding: EdgeInsets.all(29),
                            child: Center(
                              child: SingleChildScrollView(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    IconButton(
                                      icon: ImageIcon(
                                        AssetImage(
                                            "assets/images/afghanistan.png"),
                                      ),
                                      iconSize: 72,
                                      onPressed: () {
                                        Navigator.of(context).push(
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    UrduBooksCategories(
                                                        language: 'Pashto')));
                                      },
                                    ),
                                    Text(
                                      "Pashto Books",
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            decoration: BoxDecoration(
                              color: Colors.grey[200],
                              // border: Border.all(color: Colors.grey)
                              borderRadius: BorderRadius.circular(29),
                            ),
                            height: MediaQuery.of(context).size.height / 4.5,
                            width: MediaQuery.of(context).size.width / 2.3,
                          ),
                        )
                      ],
                    ),
                    SizedBox(),
                    // English and Arabic Books Container
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        //English Container
                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) =>
                                    UrduBooksCategories(language: 'English')));
                          },
                          child: Container(
                            //padding: EdgeInsets.all(15),
                            // ignore: sort_child_properties_last
                            child: Center(
                              child: SingleChildScrollView(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    IconButton(
                                      icon: ImageIcon(
                                        AssetImage("assets/images/eng.png"),
                                      ),
                                      iconSize: 72,
                                      onPressed: () {
                                        Navigator.of(context).push(
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    UrduBooksCategories(
                                                        language: 'English')));
                                      },
                                    ),
                                    Text(
                                      "English Books",
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            decoration: BoxDecoration(
                                color: Colors.grey[200],
                                // border: Border.all(color: Colors.grey)
                                borderRadius: BorderRadius.circular(29),
                                border: Border.all(
                                    color: Color.fromARGB(255, 255, 255, 255))),
                            height: MediaQuery.of(context).size.height / 4.5,
                            width: MediaQuery.of(context).size.width / 2.3,
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 40,
                          height: MediaQuery.of(context).size.height / 4,
                        ),
                        //Arabic Container
                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) =>
                                    UrduBooksCategories(language: 'Arabic')));
                          },
                          child: Container(
                            //padding: EdgeInsets.all(29),
                            child: Center(
                              child: SingleChildScrollView(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    IconButton(
                                      icon: ImageIcon(
                                        AssetImage("assets/images/arabic.png"),
                                      ),
                                      iconSize: 72,
                                      onPressed: () {
                                        Navigator.of(context).push(
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    UrduBooksCategories(
                                                        language: 'Arabic')));
                                      },
                                    ),
                                    Text(
                                      "Arabic Books",
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            decoration: BoxDecoration(
                              color: Colors.grey[200],
                              // border: Border.all(color: Colors.grey)
                              borderRadius: BorderRadius.circular(29),
                            ),
                            height: MediaQuery.of(context).size.height / 4.5,
                            width: MediaQuery.of(context).size.width / 2.3,
                          ),
                        ),
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
