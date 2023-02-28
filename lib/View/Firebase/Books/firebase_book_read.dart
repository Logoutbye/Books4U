
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:islamic_book_app/Provider/continue_reading_provider.dart';
import 'package:islamic_book_app/Utility/colors.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class FirebaseBookRead extends StatefulWidget {
  final url;
  final title;

  const FirebaseBookRead({required this.title, required this.url, super.key});

  @override
  State<FirebaseBookRead> createState() => _FirebaseBookReadState();
}

class _FirebaseBookReadState extends State<FirebaseBookRead> {
  late PdfViewerController _pdfViewerController;

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
  initState() {
    getReadingProgress();

    initBannerAd();

    src = widget.url;
    title = widget.title;

    _pdfViewerController = PdfViewerController();

    super.initState();
  }

  String src = "";
  String title = "";

  @override
  Widget build(BuildContext context) {
        final continueReadingProvider = Provider.of<ContinueReadingProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.title,
          style: TextStyle(color: AppColor.kTextColor),
        ),
        backgroundColor: AppColor.kgreyColor,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: AppColor.kTextColor,
          ),
          onPressed: () {
          continueReadingProvider.saveBookInfo(widget.title, src);
            
            Navigator.pop(context);
          },
        ),
  ),
      body: Container(
        child: Consumer<ContinueReadingProvider>(

          builder: (BuildContext context, value, Widget? child) { 
return  SfPdfViewer.network(
            src,
            controller: _pdfViewerController,
            onDocumentLoaded: (PdfDocumentLoadedDetails details) {
              // getBookInfo();
              getReadingProgress();
            
              print("book priogreesss");
            },
            onPageChanged: (PdfPageChangedDetails details) {
              print("Current page no${details.newPageNumber}");
              
              saveReadingProgress(details.newPageNumber);
           continueReadingProvider.saveBookInfo(widget.title, src);
              
              
            },
          );
     
           },
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
    );
  }

  Future<void> saveReadingProgress(int page) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setInt('readingProgress', page);
    print("saving ${prefs.get('readingProgress')}");
    prefs.setString('url', src);
  }

  Future<void> getReadingProgress() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.getInt('readingProgress') ?? 0; // Default value is 0
    if (src == prefs.getString('url')) {
      return _pdfViewerController
          .jumpToPage(prefs.getInt('readingProgress') ?? 0);
    }
    return _pdfViewerController.jumpToPage(0);
  }

//   // Save book information to local storage
// Future<void> saveBookInfo(String bookName,  String url) async {
//   SharedPreferences prefs = await SharedPreferences.getInstance();
//   prefs.setString('bookName', widget.title);
//   prefs.setString('url', src);
// }

//   // Retrieve book information from local storage
// Future<Map<String, String>> getBookInfo() async {
//   SharedPreferences prefs = await SharedPreferences.getInstance();
//    prefs.getString('bookName');
//   prefs.getString('url');
//   return {'bookName': widget.title, 'url': src};
// }
}
