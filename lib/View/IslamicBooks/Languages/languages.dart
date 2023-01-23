import 'package:flutter/material.dart';
import 'package:islamic_book_app/Utility/colors.dart';
import '../Books/books_categories.dart';

class Languages extends StatefulWidget {
  const Languages({super.key});

  @override
  State<Languages> createState() => _LanguagesState();
}

class _LanguagesState extends State<Languages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.kgreyColor,
      appBar: AppBar(
        title: Text(
          "Select Language",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: AppColor.kgreyColor,
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
                                builder: (context) => BooksCategories(
                                      language: 'Urdu',
                                    )));
                          },
                          child: Container(
                            // padding: EdgeInsets.all(10),
                            // ignore: sort_child_properties_last
                            child: Center(
                              child: SingleChildScrollView(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                      ImageIcon(
                                        AssetImage("assets/images/urdu.png"),
                                        size: 72,
                                      ),
                                      SizedBox(height: MediaQuery.of(context).size.height/100,),
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
                                    BooksCategories(language: 'Pashto')));
                          },
                          child: Container(
                            //padding: EdgeInsets.all(29),
                            child: Center(
                              child: SingleChildScrollView(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                      ImageIcon(
                                        AssetImage(
                                            "assets/images/afghanistan.png"),
                                            size: 72,
                                      ),
                                     SizedBox(height: MediaQuery.of(context).size.height/100,),
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
                                    BooksCategories(language: 'English')));
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
                                      ImageIcon(
                                        AssetImage("assets/images/eng.png"),
                                        size: 72,
                                      ),
                                      SizedBox(height: MediaQuery.of(context).size.height/100,),
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
                                    BooksCategories(language: 'Arabic')));
                          },
                          child: Container(
                            //padding: EdgeInsets.all(29),
                            child: Center(
                              child: SingleChildScrollView(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                      ImageIcon(
                                        AssetImage("assets/images/arabic.png"),
                                        size: 72,
                                      ),
                                      
                                    SizedBox(height: MediaQuery.of(context).size.height/100,),
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
