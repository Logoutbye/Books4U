import 'package:flutter/material.dart';
import 'package:islamic_book_app/Model/data.dart';
import 'package:islamic_book_app/View/IslamicBooks/Books/book_detials.dart';
import 'package:islamic_book_app/View/IslamicBooks/Books/book_read.dart';
import 'package:islamic_book_app/View/IslamicBooks/Books/book_store.dart';
import '../Model/navigation.dart';
import '../Utility/colors.dart';
import 'IslamicBooks/Languages/languages.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var bookCategory;
  
  var index=0;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(scaffoldBackgroundColor: Colors.white),
      home: Scaffold(
        extendBody: true,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(0),
          child: AppBar(backgroundColor: AppColor.kbgColor),
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
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: size.height * .05,
                  ),
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

                            // read islamic Book
                            child: Container(
                              child: Center(
                                child: SingleChildScrollView(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      ImageIcon(
                                        AssetImage("assets/images/quran.png"),
                                        size: 72,
                                      ),
                                      SizedBox(
                                        height:
                                            MediaQuery.of(context).size.height /
                                                100,
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
                          //REad Motivational book
                          InkWell(
                            onTap: () {
                              // Navigator.of(context).push(MaterialPageRoute(
                              //     builder: (context) => MotivationalBooks()));

                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => BookStore(
                                      Category:
                                          'NavigateToMotivationalBooks')));
                            },
                            child: Container(
                              child: Center(
                                child: SingleChildScrollView(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      ImageIcon(
                                        AssetImage(
                                            "assets/images/motivation.png"),
                                        size: 72,
                                      ),
                                      SizedBox(
                                        height:
                                            MediaQuery.of(context).size.height /
                                                100,
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
                      // Recommended Books
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: RichText(
                            text: TextSpan(
                                style: Theme.of(context).textTheme.headline4,
                                children: [
                              TextSpan(
                                text: "Recommended Books",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              )
                            ])),
                      ),

                      // List view of REcommended Book
                      Container(
                        height: MediaQuery.of(context).size.height / 3.5,
                        width: MediaQuery.of(context).size.width / 1,
                        decoration: BoxDecoration(color: Colors.transparent),
                        child: ListView(
                          physics: BouncingScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          children: buildRecommendedBooks(),
                        ),
                      ),
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
        // bottomNavigationBar: BottomNavigationBarr(),
      //   bottomNavigationBar: NavigationBarTheme(
      //     data:NavigationBarThemeData(
      //     indicatorColor: AppColor.kIconOnPressColor,
      //     ),
      //     child: NavigationBar(
      //       backgroundColor: AppColor.kgreyColor,
      //       selectedIndex: index,
      //       onDestinationSelected: (index) => 
      //       setState(() {
      //         this.index=index;
      //       }),
      //       destinations: [
      //         NavigationDestination(icon: Icon(
      //               Icons.home_outlined,
      //               color:AppColor.kIconColor,
      //             ), label: "Home"),
      //         NavigationDestination(icon: ImageIcon(
      //         AssetImage("assets/images/tasbih1.png"),
      //               color: AppColor.kIconColor,
      //             ), label: "Tashbhee"),
      //         NavigationDestination(icon: ImageIcon(
      //         AssetImage("assets/images/qibla1.png"),
      //         color: AppColor.kIconColor,
      //             ), label: "Qibla"),
      //         NavigationDestination(icon: Icon(
      //               Icons.add_card_outlined,
      //               color:AppColor.kIconColor,
      //             ), label: "Contribution"),
      //       ]
      //       ),
      //   ),
      // 
      ),
    );
  }

  List<Book> UrduHistoricBooks = getUrduHistoricBookList();

  List<Widget> buildRecommendedBooks() {
    List<Widget> list = [];
    //  Recommended Books

    for (var i = 0; i < UrduHistoricBooks.length; i++) {
      list.add(buildRecommendedBook(UrduHistoricBooks[i], i));
    }
    return list;
  }

  Widget buildRecommendedBook(Book book, int index) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(left: 24, bottom: 40),
      // height: 300,
      // width: 200,
      height: MediaQuery.of(context).size.height / 4,
      width: MediaQuery.of(context).size.width / 2,
      child: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              color: AppColor.kgreyColor,
              borderRadius: BorderRadius.circular(29),
            ),
          ),

          // Padding(
          // padding: EdgeInsets.only(left: 32, bottom: (size.height * 1) - (72 / 2)),
          // padding: EdgeInsets.all(8),
          // child:
          Positioned(
            top: 0,
            left: 0,
            child: Card(
              elevation: 4,
              margin: EdgeInsets.all(0),
              clipBehavior: Clip.antiAlias,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(29),
                  topRight: Radius.circular(0),
                  bottomLeft: Radius.circular(0),
                  bottomRight: Radius.circular(15),
                ),
              ),
              child: Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(book.image),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            // ),
          ),
          // Text("ff"),

          // Favourite
          Positioned(
            top: 5,
            right: 5,
            child: Column(
              children: <Widget>[
                IconButton(
                  icon: Icon(
                    Icons.favorite_border,
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          ),

          Positioned(
            top: 50,
            right: 10,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(29)),
                border: Border.all(
                  color: Colors.grey,
                  width: 1,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: <Widget>[
                    Icon(
                      Icons.star,
                      color: Colors.amber,
                      size: 15,
                    ),
                    SizedBox(height: 5),
                    Text(
                      book.score,
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: 110,
            child: Container(
              height: 85,
              width: 202,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(left: 14),
                    child: RichText(
                      maxLines: 2,
                      text: TextSpan(
                        style: TextStyle(color: AppColor.kTextColor),
                        children: [
                          TextSpan(
                            text: book.title,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Spacer(),
                  Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => BookRead(book: book)));
                          },
                          child: Container(
                            width: size.width / 2 - 110,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.grey,
                                width: 1,
                              ),
                              color: AppColor.kIconOnPressColor,
                              borderRadius: BorderRadius.all(
                                Radius.circular(15),
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: AppColor.kIconOnPressColor
                                      .withOpacity(0.4),
                                  spreadRadius: 2,
                                  blurRadius: 2,
                                  offset: Offset(0, 0),
                                ),
                              ],
                            ),
                            padding: EdgeInsets.symmetric(vertical: 10),
                            alignment: Alignment.center,
                            child: Text("Read"),
                          ),
                        ),
                      ),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(right: 12),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => BookDetail(book: book)));
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: AppColor.kgreyColor,
                              borderRadius: BorderRadius.all(
                                Radius.circular(15),
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.4),
                                  spreadRadius: 2,
                                  blurRadius: 2,
                                  offset: Offset(0, 0),
                                ),
                              ],
                              border: Border.all(
                                color: Colors.grey,
                                width: 1,
                              ),
                            ),
                            width: size.width / 2 - 110,
                            padding: EdgeInsets.symmetric(vertical: 8),
                            alignment: Alignment.center,
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 5),
                                  child: Text("Details"),
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Icon(
                                  Icons.keyboard_arrow_down,
                                  color: AppColor.kIconColor,
                                  size: 20,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
