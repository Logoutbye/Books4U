import 'package:flutter/material.dart';
import 'package:islamic_book_app/View/MotivationalBooks/motivational_books.dart';
import '../Model/navigation.dart';
import '../Utility/colors.dart';
import 'IslamicBooks/Languages/languages.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
//  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
//     systemNavigationBarColor: AppColor.kgreyColor, // navigation bar color
//     statusBarColor: Color.fromARGB(255, 0, 0, 0), // status bar color
//   ));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // theme: new ThemeData(scaffoldBackgroundColor: Colors.white),
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(0),
          child: AppBar(),
        ),
        extendBody: true,
        body: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/bg.jpg'),
              alignment: Alignment.topCenter,
              fit: BoxFit.fill,
            ),
          ),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: size.height * .1,
                  ),
                  // Image.asset(
                  //   'assets/images/photo.png',
                  //   fit: BoxFit.fill,
                  //   alignment: Alignment.topCenter,
                  //   // height: 225,
                  //   // height: MediaQuery.of(context).size.height/225,
                  //   // width: MediaQuery.of(context).size.width/450,
                  //   // width: 450,
                  // ),
                  RichText(
                      text: TextSpan(
                          style: Theme.of(context).textTheme.displaySmall,
                          children: [
                        TextSpan(
                            text: "What are you \n",
                            style: TextStyle(color: Colors.white)),
                        TextSpan(
                            text: "READING\n",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white)),
                        TextSpan(
                            text: "today? \n",
                            style: TextStyle(color: Colors.white))
                      ])),
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
                                  builder: (context) => Languages()));
                            },
                            child: Container(
                              padding: EdgeInsets.all(20),
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
                                                    Languages()));
                                      },
                                    ),
                                    Text(
                                      "Read Islamic Books",
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: AppColor.kTextColor,
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(29),
                                color: AppColor.kgreyColor,
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
                                  builder: (context) => MotivationalBooks()));
                            },
                            child: Container(
                              padding: EdgeInsets.all(20),
                              // ignore: sort_child_properties_last
                              child: SingleChildScrollView(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    IconButton(
                                      icon: ImageIcon(
                                        AssetImage(
                                            "assets/images/motivation.png"),
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
                                          color: AppColor.kTextColor,
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(29),
                                color: AppColor.kgreyColor,
                                // border: Border.all(color: Colors.grey)
                              ),
                              height: MediaQuery.of(context).size.height / 5,
                              width: MediaQuery.of(context).size.width / 2.5,
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 40,
                      ),

                      // Row(
                      //   crossAxisAlignment: CrossAxisAlignment.center,
                      //   mainAxisAlignment: MainAxisAlignment.center,
                      //   children: [
                      //     //fifth
                      //     InkWell(
                      //       onTap: () {
                      //         Navigator.of(context).push(MaterialPageRoute(
                      //             builder: (context) => Qibla()));
                      //       },
                      //       child: Container(
                      //         padding: EdgeInsets.all(29),
                      //         // ignore: sort_child_properties_last
                      //         child: SingleChildScrollView(
                      //           child: Column(
                      //             crossAxisAlignment:
                      //                 CrossAxisAlignment.center,
                      //             mainAxisAlignment: MainAxisAlignment.center,
                      //             children: [
                      //               IconButton(
                      //                 icon: ImageIcon(
                      //                   AssetImage("assets/images/qibla.png"),
                      //                 ),
                      //                 iconSize: 72,
                      //                 onPressed: () {
                      //                   Navigator.of(context).push(
                      //                       MaterialPageRoute(
                      //                           builder: (context) =>
                      //                               Qibla()));
                      //                 },
                      //               ),
                      //               Text(
                      //                 "Qibla",
                      //                 style: TextStyle(
                      //                     fontSize: 15,
                      //                     color: AppColor.kTextColor,
                      //                     fontWeight: FontWeight.bold),
                      //               )
                      //             ],
                      //           ),
                      //         ),
                      //         decoration: BoxDecoration(
                      //           borderRadius: BorderRadius.circular(29),
                      //           color: AppColor.kgreyColor,
                      //           // border: Border.all(color: Colors.grey)
                      //         ),
                      //         height: MediaQuery.of(context).size.height / 5,
                      //         width: MediaQuery.of(context).size.width / 2.5,
                      //       ),
                      //     ),
                      //     SizedBox(
                      //       width: MediaQuery.of(context).size.width / 20,
                      //     ),
                      //     //Sixth
                      //     InkWell(
                      //       onTap: () {
                      //         Navigator.of(context).push(MaterialPageRoute(
                      //             builder: (context) => TasbheeCounter()));
                      //       },
                      //       child: Container(
                      //         padding: EdgeInsets.all(29),
                      //         // ignore: sort_child_properties_last
                      //         child: SingleChildScrollView(
                      //           child: Column(
                      //             crossAxisAlignment:
                      //                 CrossAxisAlignment.center,
                      //             mainAxisAlignment: MainAxisAlignment.center,
                      //             children: [
                      //               IconButton(
                      //                 icon: ImageIcon(
                      //                   AssetImage(
                      //                       "assets/images/rosary.png"),
                      //                 ),
                      //                 iconSize: 72,
                      //                 onPressed: () {
                      //                   Navigator.of(context).push(
                      //                       MaterialPageRoute(
                      //                           builder: (context) =>
                      //                               TasbheeCounter()));
                      //                 },
                      //               ),
                      //               Text(
                      //                 "Zikar",
                      //                 style: TextStyle(
                      //                     fontSize: 15,
                      //                     color: AppColor.kTextColor,
                      //                     fontWeight: FontWeight.bold),
                      //               )
                      //             ],
                      //           ),
                      //         ),
                      //         decoration: BoxDecoration(
                      //           borderRadius: BorderRadius.circular(29),
                      //           color: AppColor.kgreyColor,
                      //           // border: Border.all(color: Colors.grey)
                      //         ),
                      //         height: MediaQuery.of(context).size.height / 5,
                      //         width: MediaQuery.of(context).size.width / 2.5,
                      //       ),
                      //     ),
                      //   ],
                      // ),
                      // SizedBox(
                      //   height: MediaQuery.of(context).size.height / 40,
                      // ),
                      // Row(
                      //   crossAxisAlignment: CrossAxisAlignment.center,
                      //   mainAxisAlignment: MainAxisAlignment.center,
                      //   children: [
                      //     //Seven

                      //     InkWell(
                      //       onTap: () {
                      //         Navigator.of(context).push(MaterialPageRoute(
                      //             builder: (context) => Contribution()));
                      //       },
                      //       child: Container(
                      //         padding: EdgeInsets.all(29),
                      //         // ignore: sort_child_properties_last
                      //         child: SingleChildScrollView(
                      //           child: Column(
                      //             crossAxisAlignment:
                      //                 CrossAxisAlignment.center,
                      //             mainAxisAlignment: MainAxisAlignment.center,
                      //             children: [
                      //               IconButton(
                      //                 icon: Icon(Icons.add_card_rounded),
                      //                 iconSize: 72,
                      //                 onPressed: () {
                      //                   Navigator.of(context).push(
                      //                       MaterialPageRoute(
                      //                           builder: (context) =>
                      //                               Contribution()));
                      //                 },
                      //               ),
                      //               Text(
                      //                 "Contribution",
                      //                 style: TextStyle(
                      //                     fontSize: 15,
                      //                     color: AppColor.kTextColor,
                      //                     fontWeight: FontWeight.bold),
                      //               )
                      //             ],
                      //           ),
                      //         ),
                      //         decoration: BoxDecoration(
                      //           borderRadius: BorderRadius.circular(29),
                      //           color: AppColor.kgreyColor,
                      //           // border: Border.all(color: Colors.grey)
                      //         ),
                      //         height: MediaQuery.of(context).size.height / 5,
                      //         width: MediaQuery.of(context).size.width / 2.5,
                      //       ),
                      //     ),
                      //     SizedBox(
                      //       width: MediaQuery.of(context).size.width / 20,
                      //     ),
                      //     //Eight
                      //     InkWell(
                      //       onTap: () {
                      //         // StoreRedirect.redirect(
                      //         //     androidAppId: "com.facebook.katana",
                      //         //     iOSAppId: "id284882215");
                      //       },
                      //       child: Container(
                      //         padding: EdgeInsets.all(29),
                      //         // ignore: sort_child_properties_last
                      //         child: SingleChildScrollView(
                      //           child: Column(
                      //             crossAxisAlignment:
                      //                 CrossAxisAlignment.center,
                      //             mainAxisAlignment: MainAxisAlignment.center,
                      //             children: [
                      //               IconButton(
                      //                 icon: Icon(Icons.share),
                      //                 iconSize: 72,
                      //                 onPressed: () {
                      //                   // StoreRedirect.redirect(
                      //                   //     androidAppId:
                      //                   //         "com.Kawiish.books4u",
                      //                   //     iOSAppId: "585027354");
                      //                 },
                      //               ),
                      //               Text(
                      //                 "Share",
                      //                 style: TextStyle(
                      //                     fontSize: 15,
                      //                     color: AppColor.kTextColor,
                      //                     fontWeight: FontWeight.bold),
                      //               )
                      //             ],
                      //           ),
                      //         ),
                      //         decoration: BoxDecoration(
                      //           borderRadius: BorderRadius.circular(29),
                      //           color: AppColor.kgreyColor,
                      //           // border: Border.all(color: Colors.grey)
                      //         ),
                      //         height: MediaQuery.of(context).size.height / 5,
                      //         width: MediaQuery.of(context).size.width / 2.5,
                      //       ),
                      //     ),
                      //   ],
                      // ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 10,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBarr(),
      ),
    );
  }
}
