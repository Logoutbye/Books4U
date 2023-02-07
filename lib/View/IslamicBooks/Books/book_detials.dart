import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:islamic_book_app/Utility/colors.dart';
import 'package:islamic_book_app/View/IslamicBooks/Books/book_read.dart';

import '../../../Model/data.dart';


class BookDetail extends StatefulWidget {

  final Book book;

  BookDetail({required this.book});

  @override
  State<BookDetail> createState() => _BookDetailState();
}

class _BookDetailState extends State<BookDetail> {

    late BannerAd _bannerAd;
  bool isAdLoaded=false;

 initBannerAd(){
  _bannerAd= BannerAd(
    size: AdSize.banner, 
    adUnitId:AdsId.kAdUnitId , 
    listener: BannerAdListener(
      onAdLoaded: (ad) {
        setState(() {
          isAdLoaded=true;
        });
      },
      onAdFailedToLoad: (ad, error) {
        
      },
    ), 
    request: AdRequest()
    );
    _bannerAd.load();
 }

@override
  void initState() {
    initBannerAd();  
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;
    
    return Scaffold(
        appBar: PreferredSize(preferredSize: Size.fromHeight(0), child: AppBar(backgroundColor: AppColor.kbgColor),),

      body: Stack(
        children: [

          Container(
            child: Hero(
              
              tag: widget.book.title,
              child: Image.asset(
                widget.book.image,
                fit: BoxFit.fitWidth
              ),
            ),
          ),

          Padding(
            padding: EdgeInsets.only(top: 48, left: 32,),
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },

              // arrow back button
              child: Align(
                alignment: Alignment.topLeft,
                child: Container(
                  height: 42,
                  width: 42,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    child: Icon(
                      Icons.arrow_back,
                      color: AppColor.kIconOnPressColor,
                    ),
                  ),
                ),
              ),
            ),
          ),

          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: size.height * 0.5,
              padding: EdgeInsets.only(top: 64),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [

                  Expanded(
                    child: Container(
                      padding: EdgeInsets.only(right: 32, left: 32, bottom: 16,),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [

                          Text(
                            widget.book.title,),

                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 8),
                            child: Row(
                              children: [
                                Row(
                                  children: <Widget>[

                                    Icon(Icons.star, size: 20, color: AppColor.kIconOnPressColor,),
                                    Icon(Icons.star, size: 20, color: AppColor.kIconOnPressColor,),
                                    Icon(Icons.star, size: 20, color: AppColor.kIconOnPressColor,),
                                    Icon(Icons.star, size: 20, color: AppColor.kIconOnPressColor,),
                                    Icon(Icons.star_half, size: 20, color: AppColor.kIconOnPressColor,),

                                  ],
                                ),

                                SizedBox(
                                  width: 12,
                                ),

                                Text(
                                  widget.book.score,),

                              ],
                            ),
                          ),

                          Expanded(
                            child: SingleChildScrollView(
                              physics: BouncingScrollPhysics(),
                              child: Text(
                                widget.book.description,
                              ),
                            ),
                          ),

                        ],
                      ),
                    ),
                  ),

                  Container(
                    height: 100,
                    width: size.width,
                    padding: EdgeInsets.only(top: 16, left: 32, right: 32, bottom: 32,),
                    decoration: BoxDecoration(
                      color: AppColor.kgreyColor,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                      ),
                       boxShadow: [
                                BoxShadow(
                                  color: AppColor.kIconColor.withOpacity(0.4),
                                  spreadRadius: 2,
                                  blurRadius: 2,
                                  offset: Offset(0, 0),
                                ),]
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [

                        GestureDetector(
                          onTap: () {
        //                     Navigator.of(context).push(MaterialPageRoute(
        //   builder: (context) => SfPdfViewer.asset(book.path),
        // ));
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) =>BookRead(book: widget.book)
        ));
                          },
                          child: Container(
                            width: size.width / 2 - 44,
                            decoration: BoxDecoration(
                              color: AppColor.kIconOnPressColor,
                              borderRadius: BorderRadius.all(
                                Radius.circular(15),
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: AppColor.kIconOnPressColor.withOpacity(0.4),
                                  spreadRadius: 2,
                                  blurRadius: 2,
                                  offset: Offset(0, 0),
                                ),
                              ],
                            ),
                            child: Center(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Want to read",
                                  ),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Icon(
                                    Icons.keyboard_arrow_down,
                                    color: AppColor.kIconColor,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),

                        Container(
                          width: size.width / 2 - 44,
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
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Get a copy",
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Icon(
                                  Icons.content_copy,
                                  color: AppColor.kIconOnPressColor,
                                  size: 20,
                                ),
                              ],
                            ),
                          ),
                        ),

                      ],
                    ),
                  ),

                ],
              ),
            ),
          ),

          // Align(
          //   alignment: Alignment.bottomLeft,
          //   child: Padding(
          //     padding: EdgeInsets.only(left: 32, bottom: (size.height * 0.5) - (75 / 2)),
          //     child: Card(
          //       elevation: 4,
          //       margin: EdgeInsets.all(0),
          //       clipBehavior: Clip.antiAlias,
          //       shape: RoundedRectangleBorder(
          //         borderRadius: BorderRadius.all(
          //           Radius.circular(15),
          //         ),
          //       ),
          //       child: Container(
          //         width: 75,
          //         height: 75,
          //         decoration: BoxDecoration(
          //           image: DecorationImage(
          //             image: AssetImage(book.image), 
          //             fit: BoxFit.cover,
          //           ),
          //         ),
          //       ),
          //     ),
          //   ),
          // ),

        ],
      ),
       bottomNavigationBar: isAdLoaded? Container(
        decoration: BoxDecoration(color: AppColor.kgreyColor),
        height: _bannerAd.size.height.toDouble(),
        width: _bannerAd.size.width.toDouble(),
        child:AdWidget(ad: _bannerAd) ,
      ):SizedBox(),
    );
  }
}