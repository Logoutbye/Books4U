import 'package:flutter/material.dart';
import 'Arabic_Books/arabic_book_categories.dart';
import 'English_Books/english_books_categories.dart';
import 'Pashto_Books/pashto_books_categories.dart';
import 'Urdu_Books/urdu_books_categories.dart';

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
        title: Text("Select Language",style: TextStyle(color: Colors.black),),
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        leading:  IconButton(
          icon: const Icon(Icons.arrow_back,color: Colors.black,),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        
        ),
      body: Container(
            // width: double.infinity,
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
                                builder: (context) => UrduBooksCategories()));
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
                                      AssetImage("assets/images/urdu.png"),
                                    ),
                                    iconSize: 72,
                                    onPressed: () {
                                      Navigator.of(context).push(MaterialPageRoute(
                                          builder: (context) => UrduBooksCategories()));
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
                                builder: (context) => PashtoBooksCategories()));
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
                                      AssetImage("assets/images/afghanistan.png"),
                                    ),
                                    iconSize: 72,
                                    onPressed: () {
                                      Navigator.of(context).push(MaterialPageRoute(
                                          builder: (context) => PashtoBooksCategories()));
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
                            decoration: BoxDecoration(
                                 color: Colors.grey[200],
                                // border: Border.all(color: Colors.grey)
                                borderRadius: BorderRadius.circular(29),),
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
                                builder: (context) => EnglishBooksCategories()));
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
                                      AssetImage("assets/images/eng.png"),
                                    ),
                                    iconSize: 72,
                                    onPressed: () {
                                      Navigator.of(context).push(MaterialPageRoute(
                                          builder: (context) => EnglishBooksCategories()));
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
                            decoration: BoxDecoration(
                                 color: Colors.grey[200],
                                // border: Border.all(color: Colors.grey)
                                borderRadius: BorderRadius.circular(29),
                                border: Border.all(
                                    color: Color.fromARGB(255, 255, 255, 255))),
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
                                MaterialPageRoute(builder: (context) => ArabicBooksCategories()));
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
                                      AssetImage("assets/images/arabic.png"),
                                    ),
                                    iconSize: 72,
                                    onPressed: () {
                                      Navigator.of(context).push(MaterialPageRoute(
                                          builder: (context) => ArabicBooksCategories()));
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
                            decoration: BoxDecoration(
                              color: Colors.grey[200],
                                // border: Border.all(color: Colors.grey)                           
                                 borderRadius: BorderRadius.circular(29),),
                            height: MediaQuery.of(context).size.height / 5,
                            width: MediaQuery.of(context).size.width / 2.5,
                          ),
                        ),
                      ],
                    ),
                     SizedBox(
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            //third
                            InkWell(
                              // onTap: _launchUrl,
                              child: Container(
                                padding: EdgeInsets.all(20),
                                child: SingleChildScrollView(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      IconButton(
                                        icon: ImageIcon(
                                          AssetImage("assets/images/ebook.png"),
                                        ),
                                        iconSize: 72,
                                        onPressed: () {},
                                        // _launchUrl,
                                      ),
                                      Text(
                                        "More Islamic Books",
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
                            //fourth
                           
                          ],
                        ),
                  ]),
            ),
          ),
        ),
      ),
      
    );  }
}