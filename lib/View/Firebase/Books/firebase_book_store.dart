import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:islamic_book_app/View/Firebase/Books/firebase_book_read.dart';

import '../../../Utility/colors.dart';

class MyFireBaseStorageList extends StatefulWidget {
  String Category;
  String MotivationalCategory;
  MyFireBaseStorageList(
      {required this.Category, required this.MotivationalCategory});
  @override
  _MyFireBaseStorageListState createState() => _MyFireBaseStorageListState();
}

class _MyFireBaseStorageListState extends State<MyFireBaseStorageList> {
  List<dynamic> _files = [];
  String type = "";
  String MotivationalType = "";

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
    type = widget.Category;

    print("to check type in firebase book store::${type}");
    MotivationalType = widget.MotivationalCategory;
    super.initState();
    _getFiles();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.kbgColor,
      appBar: AppBar(
        title: Text('More Books', style: TextStyle(color: AppColor.kTextColor)),
        elevation: 0,
        backgroundColor: AppColor.kgreyColor,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: AppColor.kTextColor),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(
        child: _files.length == 0
            ? Center(child: CircularProgressIndicator())
            : ListView.builder(
                itemCount: _files.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.all(12),
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        color: AppColor.kgreyColor,
                        border: Border.all(width: 1),
                        borderRadius: BorderRadius.all(Radius.circular(29))),
                    child: ListTile(
                      leading: Icon(Icons.insert_drive_file),
                      onTap: () async {
                        String fileName = "${_files[index].name}";

                        String urduPdfUrls = "";
                        if (type == 'buildUrduDarsiBooks') {
                          final ref = FirebaseStorage.instance.ref().child(
                              'Books/Islamic Books/Urdu/general/$fileName');
                          String url = await ref.getDownloadURL();
                          setState(() {
                            urduPdfUrls = url;
                          });
                        } else if (type == 'buildUrduFathwaBooks') {
                          final ref = FirebaseStorage.instance.ref().child(
                              'Books/Islamic Books/Urdu/Fathwa/$fileName');
                          String url = await ref.getDownloadURL();
                          setState(() {
                            urduPdfUrls = url;
                          });
                        } else if (type == 'buildUrduFiqaBooks') {
                          final ref = FirebaseStorage.instance
                              .ref()
                              .child('Books/Islamic Books/Urdu/Fiqa/$fileName');
                          String url = await ref.getDownloadURL();
                          setState(() {
                            urduPdfUrls = url;
                          });
                        } else if (type == 'buildUrduTafseerBooks') {
                          final ref = FirebaseStorage.instance.ref().child(
                              'Books/Islamic Books/Urdu/Tafseer/$fileName');
                          String url = await ref.getDownloadURL();
                          setState(() {
                            urduPdfUrls = url;
                          });
                        } else if (type == 'buildUrduHaditsBooks') {
                          final ref = FirebaseStorage.instance.ref().child(
                              'Books/Islamic Books/Urdu/Hadits/$fileName');
                          String url = await ref.getDownloadURL();
                          setState(() {
                            urduPdfUrls = url;
                          });
                        } else if (type == 'buildUrduHistoricBooks') {
                          final ref = FirebaseStorage.instance.ref().child(
                              'Books/Islamic Books/Urdu/general/$fileName');
                          String url = await ref.getDownloadURL();
                          setState(() {
                            urduPdfUrls = url;
                          });
                        } else if (MotivationalType ==
                            'NavigateToMotivationalBooks') {
                          final ref = FirebaseStorage.instance
                              .ref()
                              .child('Books/Motivational/$fileName');
                          String url = await ref.getDownloadURL();
                          setState(() {
                            urduPdfUrls = url;
                          });
                        }

                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => FirebaseBookRead(
                                  url: urduPdfUrls,
                                  title: _files[index].name,
                                )));
                      },
                      title: Text(_files[index].name),
                    ),
                  );
                },
              ),
      ),
       bottomNavigationBar: isAdLoaded? Container(
        decoration: BoxDecoration(color: AppColor.kgreyColor),
        height: _bannerAd.size.height.toDouble(),
        width: _bannerAd.size.width.toDouble(),
        child:AdWidget(ad: _bannerAd) ,
      ):SizedBox(),
    );
  }

  void _getFiles() async {
    if (type == 'buildUrduDarsiBooks') {
      var files = await FirebaseStorage.instance
          .ref()
          .child('Books/Islamic Books/Urdu/general/')
          .listAll();
      setState(() {
        _files = files.items;
      });
    } else if (type == 'buildUrduFathwaBooks') {
      var files = await FirebaseStorage.instance
          .ref()
          .child('Books/Islamic Books/Urdu/general/')
          .listAll();
      setState(() {
        _files = files.items;
      });
    } else if (type == 'buildUrduFiqaBooks') {
      var files = await FirebaseStorage.instance
          .ref()
          .child('Books/Islamic Books/Urdu/Fiqa/')
          .listAll();
      setState(() {
        _files = files.items;
      });
    } else if (type == 'buildUrduTafseerBooks') {
      var files = await FirebaseStorage.instance
          .ref()
          .child('Books/Islamic Books/Urdu/Tafseer/')
          .listAll();
      setState(() {
        _files = files.items;
      });
    } else if (type == 'buildUrduHaditsBooks') {
      var files = await FirebaseStorage.instance
          .ref()
          .child('Books/Islamic Books/Urdu/Hadits/')
          .listAll();
      setState(() {
        _files = files.items;
      });
    } else if (type == 'buildUrduHistoricBooks') {
      var files = await FirebaseStorage.instance
          .ref()
          .child('Books/Islamic Books/Urdu/general/')
          .listAll();
      setState(() {
        _files = files.items;
      });
    } else if (MotivationalType == 'NavigateToMotivationalBooks') {
      var files = await FirebaseStorage.instance
          .ref()
          .child('Books/Motivational/')
          .listAll();
      setState(() {
        _files = files.items;
      });
    }
  }
}
