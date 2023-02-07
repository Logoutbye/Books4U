import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:islamic_book_app/Model/data.dart';
import 'package:islamic_book_app/Utility/colors.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class BookRead extends StatefulWidget {

  final Book book;
  const BookRead({super.key, required this.book});

  @override
  State<BookRead> createState() => _BookReadState();
}

class _BookReadState extends State<BookRead> {

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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${widget.book.title}",
        style: TextStyle(color: AppColor.kTextColor),),
        backgroundColor: AppColor.kgreyColor,
        leading: IconButton(
          icon: Icon(Icons.arrow_back,color: AppColor.kTextColor,),
          onPressed: () {
            Navigator.pop(context);
          },)
      ),
      body: Container(
        child: SfPdfViewer.asset(widget.book.path),
      ),
bottomNavigationBar: isAdLoaded
            ? Container(
                decoration: BoxDecoration(color: AppColor.kgreyColor),
                height: _bannerAd.size.height.toDouble(),
                width: _bannerAd.size.width.toDouble(),
                child: AdWidget(ad: _bannerAd),
              )
            : SizedBox(),    );
  }
}

