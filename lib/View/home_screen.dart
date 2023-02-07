import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:islamic_book_app/Model/data.dart';
import 'package:islamic_book_app/View/IslamicBooks/Books/book_read.dart';
import 'package:islamic_book_app/View/IslamicBooks/Books/book_store.dart';
import '../Utility/colors.dart';
import 'IslamicBooks/Books/book_detials.dart';
import 'IslamicBooks/Languages/languages.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var bookCategory;
  var index = 0;
  // static const likedkey ='liked_key';
  // static bool? liked ;

  // ads
  late BannerAd _bannerAd;
  bool isAdLoaded = false;
  initBannerAd() {
    _bannerAd = BannerAd(
        size: AdSize.banner,
        adUnitId: AdsId.kAdUnitId,
        listener: BannerAdListener(
          onAdLoaded: (ad) {
            setState(() {
              isAdLoaded = true;
            });
          },
          onAdFailedToLoad: (ad, error) {},
        ),
        request: AdRequest());
    _bannerAd.load();
  }

  @override
  void initState() {
    initBannerAd();

    // _restorePresisitedPrefrences();
    // TODO: implement initState
    super.initState();
  }

  // Future<void> _restorePresisitedPrefrences() async {
  //   final prefs = await SharedPreferences.getInstance();
  //   var liked =await prefs.getBool(likedkey);
  //   setState(() =>this.liked=liked!);
  // }
  //   Future<void> _getPresisitedPrefrences( ) async {
  //     setState(() =>this.liked= !liked);
  //   final prefs = await SharedPreferences.getInstance();
  //   prefs.setBool(likedkey,liked);
  // }

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
                image: AssetImage('assets/images/bg_bg.png'),
                alignment: Alignment.topCenter,
                fit: BoxFit.fill,
                colorFilter:
                    ColorFilter.mode(Colors.black, BlendMode.softLight)),
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
                        height: MediaQuery.of(context).size.height / 3.3,
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
        bottomNavigationBar: isAdLoaded
            ? Container(
                decoration: BoxDecoration(color: AppColor.kgreyColor),
                height: _bannerAd.size.height.toDouble(),
                width: _bannerAd.size.width.toDouble(),
                child: AdWidget(ad: _bannerAd),
              )
            : SizedBox(),
      ),
    );
  }

  List<Book> getRecommendedBookListt = getRecommendedBookList();

  List<Widget> buildRecommendedBooks() {
    List<Widget> list = [];
    //  Recommended Books

    for (var i = 0; i < getRecommendedBookListt.length; i++) {
      list.add(buildRecommendedBook(getRecommendedBookListt[i], i));
    }
    return list;
  }

  Widget buildRecommendedBook(Book book, int index) {
    // Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(left: 24, bottom: 40),
      height: MediaQuery.of(context).size.height / 1,
      width: MediaQuery.of(context).size.width / 2,
      child: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              color: AppColor.kgreyColor,
              borderRadius: BorderRadius.circular(29),
            ),
          ),
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
          // Favourite
          Positioned(
            top: 5,
            right: 5,
            child: Column(
              children: <Widget>[
                IconButton(
                  icon: book.liked
                      ? Icon(
                          Icons.favorite,
                          color: Colors.red,
                        )
                      : Icon(
                          Icons.favorite_border,
                          // color: Colors.red,
                        ),
                  onPressed: () {
                    book.liked = !book.liked;
                    setState(() {});
                  },
                )
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
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: MediaQuery.of(context).size.height / 10,
              width: MediaQuery.of(context).size.width / 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(8, 0, 8, 0),
                      child:Directionality(
                        textDirection: TextDirection.rtl,

                        child: Text(
                          book.title,
                          style: TextStyle(color: AppColor.kTextColor,
                          fontWeight: FontWeight.bold,
                          ),
                      
                        ),
                      ),
                      //  RichText(
                      //   textDirection: TextDirection.ltr,
                      //   maxLines: 2,
                      //   text: TextSpan(
                      //     style: TextStyle(color: AppColor.kTextColor),
                      //     children: [
                      //       TextSpan(
                      //         text: book.title,
                      //         style: TextStyle(
                      //           fontWeight: FontWeight.bold,
                      //         ),
                      //       ),
                      //     ],
                      //   ),
                      // ),
                    ),
                  ),
                  Spacer(),
                  Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left: 0),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => BookRead(book: book)));
                          },
                          child: Container(
                            width: MediaQuery.of(context).size.width / 4.5,
                            height: MediaQuery.of(context).size.height / 20,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.grey,
                                width: 1,
                              ),
                              color: AppColor.kIconOnPressColor,
                              // borderRadius: BorderRadius.all(
                              //   Radius.circular(15),
                              // ),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(0),
                                topRight: Radius.circular(15),
                                bottomLeft: Radius.circular(29),
                                bottomRight: Radius.circular(0),
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
                        padding: const EdgeInsets.only(right: 0),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => BookDetail(book: book)));
                          },
                          child: SingleChildScrollView(
                            scrollDirection: Axis.vertical,
                            child: Container(
                              decoration: BoxDecoration(
                                color: AppColor.kgreyColor,
                                // borderRadius: BorderRadius.all(
                                //   Radius.circular(15),
                                // ),
                          
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(15),
                                  topRight: Radius.circular(0),
                                  bottomLeft: Radius.circular(0),
                                  bottomRight: Radius.circular(29),
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
                              width: MediaQuery.of(context).size.width / 4.5,
                              height: MediaQuery.of(context).size.height / 20,
                              padding: EdgeInsets.symmetric(vertical: 8),
                              alignment: Alignment.center,
                              child: SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 5),
                                      child: Text("Details"),
                                    ),
                                    SizedBox(),
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
