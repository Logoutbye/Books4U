import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:islamic_book_app/Utility/colors.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class FirebaseBookRead extends StatefulWidget {
  final url;
  final title;


  const FirebaseBookRead({required this.title,required this.url,super.key});

  @override
  State<FirebaseBookRead> createState() => _FirebaseBookReadState();
}

class _FirebaseBookReadState extends State<FirebaseBookRead> {
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

    src =widget.url;
    title =widget.title;
    super.initState();
  }
  String src="";
  String title="";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
        title: Text(widget.title,
        style: TextStyle(color: AppColor.kTextColor),),
        backgroundColor: AppColor.kgreyColor,
        leading: IconButton(
          icon: Icon(Icons.arrow_back,color: AppColor.kTextColor,),
          onPressed: () {
            Navigator.pop(context);
          },)
      ),
      body: Container(
        child: SfPdfViewer.network(src),
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