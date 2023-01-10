import 'package:flutter/material.dart';
import 'package:islamic_book_app/View/contact_screen.dart';
import 'package:islamic_book_app/View/contribution.dart';
import 'package:islamic_book_app/View/motivational_books.dart';
import 'package:islamic_book_app/View/qibla.dart';
import 'package:islamic_book_app/View/tasbhee_counter.dart';
import 'package:store_redirect/store_redirect.dart';
import 'package:url_launcher/url_launcher.dart';
import 'historic_books.dart';
import 'islamic_books_categories.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final Uri _url = Uri.parse('https://muslimbookslibrary.com/book');
  final Uri _url2 = Uri.parse(
      'https://www.infobooks.org/free-pdf-books/self-improvement/motivation/');

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(scaffoldBackgroundColor: Colors.green),
      home: Scaffold(
          body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Image.asset(
                'assets/images/photo.png',
                height: 225,
                width: 450,
              ),
              Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      //first
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => IslamicBooksCategories()));
                        },
                        child: Container(
                          
                          padding: EdgeInsets.all(8),
                          // ignore: sort_child_properties_last
                          child: SingleChildScrollView(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                IconButton(
                                  icon: ImageIcon(
                                    AssetImage("assets/images/quran.png"),
                                  ),
                                  iconSize: 72,
                                  onPressed: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                IslamicBooksCategories()));
                                  },
                                ),
                                Text(
                                  "Read Islamic Books",
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.yellow,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(color: Colors.black)),
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
                              builder: (context) => MotivationalBooks()));
                        },
                        child: Container(
                          padding: EdgeInsets.all(8),
                          // ignore: sort_child_properties_last
                          child: SingleChildScrollView(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                IconButton(
                                  icon: ImageIcon(
                                    AssetImage("assets/images/motivation.png"),
                                  ),
                                  iconSize: 72,
                                  onPressed: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                MotivationalBooks()));
                                  },
                                ),
                                Text(
                                  "Motivational Books",
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.yellow,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(color: Colors.black)),
                          height: MediaQuery.of(context).size.height / 5,
                          width: MediaQuery.of(context).size.width / 2.5,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 40,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      //third
                      InkWell(
                        onTap: _launchUrl,
                        child: Container(
                          padding: EdgeInsets.all(8),
                          child: SingleChildScrollView(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                IconButton(
                                  icon: Icon(Icons.library_books_sharp),
                                  iconSize: 72,
                                  onPressed: _launchUrl,
                                ),
                                Text(
                                  "More Islamic Books",
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.yellow,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(color: Colors.black)),
                          height: MediaQuery.of(context).size.height / 5,
                          width: MediaQuery.of(context).size.width / 2.5,
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 20,
                      ),
                      //fourth
                      InkWell(
                        onTap: _launchUrl2,
                        child: Container(
                          padding: EdgeInsets.all(8),
                          child: SingleChildScrollView(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                IconButton(
                                    icon: Icon(Icons.book_online),
                                    iconSize: 72,
                                    onPressed: _launchUrl2),
                                Text(
                                  "More Motivational Books",
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.yellow,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )
                              ],
                            ),
                          ),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(color: Colors.black)),
                          height: MediaQuery.of(context).size.height / 5,
                          width: MediaQuery.of(context).size.width / 2.5,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 40,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      //fifth
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(
                              MaterialPageRoute(builder: (context) => Qibla()));
                        },
                        child: Container(
                          padding: EdgeInsets.all(8),
                          // ignore: sort_child_properties_last
                          child: SingleChildScrollView(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                IconButton(
                                  icon: ImageIcon(
                                    AssetImage("assets/images/qibla.png"),
                                  ),
                                  iconSize: 72,
                                  onPressed: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (context) => Qibla()));
                                  },
                                ),
                                Text(
                                  "Qibla",
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.yellow,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(color: Colors.black)),
                          height: MediaQuery.of(context).size.height / 5,
                          width: MediaQuery.of(context).size.width / 2.5,
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 20,
                      ),
                      //Sixth
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => TasbheeCounter()));
                        },
                        child: Container(
                          padding: EdgeInsets.all(8),
                          // ignore: sort_child_properties_last
                          child: SingleChildScrollView(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                IconButton(
                                  icon: ImageIcon(
                                    AssetImage("assets/images/rosary.png"),
                                  ),
                                  iconSize: 72,
                                  onPressed: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                TasbheeCounter()));
                                  },
                                ),
                                Text(
                                  "Zikar",
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.yellow,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(color: Colors.black)),
                          height: MediaQuery.of(context).size.height / 5,
                          width: MediaQuery.of(context).size.width / 2.5,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 40,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      //Seven

                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => Contribution()));
                        },
                        child: Container(
                          padding: EdgeInsets.all(8),
                          // ignore: sort_child_properties_last
                          child: SingleChildScrollView(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                IconButton(
                                  icon: Icon(Icons.add_card_rounded),
                                  iconSize: 72,
                                  onPressed: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                Contribution()));
                                  },
                                ),
                                Text(
                                  "Contribution",
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.yellow,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(color: Colors.black)),
                          height: MediaQuery.of(context).size.height / 5,
                          width: MediaQuery.of(context).size.width / 2.5,
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 20,
                      ),
                      //Eight
                      InkWell(
                        onTap: () {
                          StoreRedirect.redirect(
                              androidAppId: "com.kawish.shinakiprayermap",
                              iOSAppId: "585027354");
                        },
                        child: Container(
                          padding: EdgeInsets.all(8),
                          // ignore: sort_child_properties_last
                          child: SingleChildScrollView(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                IconButton(
                                  icon: Icon(Icons.share),
                                  iconSize: 72,
                                  onPressed: () {
                                    StoreRedirect.redirect(
                                        androidAppId:
                                            "com.kawish.shinakiprayermap",
                                        iOSAppId: "585027354");
                                  },
                                ),
                                Text(
                                  "Share",
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.yellow,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(color: Colors.black)),
                          height: MediaQuery.of(context).size.height / 5,
                          width: MediaQuery.of(context).size.width / 2.5,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 40,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      //nine

                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => ContactScreen()));
                        },
                        child: Container(
                          padding: EdgeInsets.all(8),
                          // ignore: sort_child_properties_last
                          child: SingleChildScrollView(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                IconButton(
                                  icon: Icon(Icons.contact_mail),
                                  iconSize: 72,
                                  onPressed: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                ContactScreen()));
                                  },
                                ),
                                Text(
                                  "Contact Us",
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.yellow,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(color: Colors.black)),
                          height: MediaQuery.of(context).size.height / 5,
                          width: MediaQuery.of(context).size.width / 2.5,
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 20,
                      ),
                      // //ten
                      // InkWell(
                      //   onTap: () {
                      //     StoreRedirect.redirect(
                      //         androidAppId: "com.kawish.shinakiprayermap",
                      //         iOSAppId: "585027354");
                      //   },
                      //   child: Container(
                      //     padding: EdgeInsets.all(8),
                      //     child: SingleChildScrollView(
                      //       child: Column(
                      //         crossAxisAlignment: CrossAxisAlignment.center,
                      //         mainAxisAlignment: MainAxisAlignment.center,
                      //         children: [
                      //           IconButton(
                      //             icon: Icon(Icons.share),
                      //             iconSize: 72,
                      //             onPressed: () {
                      //               StoreRedirect.redirect(
                      //                   androidAppId:
                      //                       "com.kawish.shinakiprayermap",
                      //                   iOSAppId: "585027354");
                      //             },
                      //           ),
                      //           Text(
                      //             "Share",
                      //             style: TextStyle(
                      //                 fontSize: 15,
                      //                 color: Colors.yellow,
                      //                 fontWeight: FontWeight.bold),
                      //           )
                      //         ],
                      //       ),
                      //     ),
                      //     decoration: BoxDecoration(
                      //                                   borderRadius: BorderRadius.circular(8),

                      //         border: Border.all(color: Colors.black)),
                      //     height: MediaQuery.of(context).size.height / 5,
                      //     width: MediaQuery.of(context).size.width / 2.5,
                      //   ),
                      // ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      )),
    );
  }

  Future<void> _launchUrl() async {
    if (!await launchUrl(_url)) {
      throw 'Could not launch $_url';
    }
  }

  Future<void> _launchUrl2() async {
    if (!await launchUrl(_url2)) {
      throw 'Could not launch $_url2';
    }
  }
}
