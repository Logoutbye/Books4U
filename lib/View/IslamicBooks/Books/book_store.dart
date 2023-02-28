import 'dart:developer';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:islamic_book_app/Model/data.dart';
import 'package:islamic_book_app/Utility/colors.dart';
import 'package:islamic_book_app/View/Firebase/Books/firebase_book_store.dart';
import 'package:islamic_book_app/View/IslamicBooks/Books/book_detials.dart';
import 'package:islamic_book_app/View/IslamicBooks/Books/book_read.dart';
import 'package:lottie/lottie.dart';

import '../../Firebase/Books/firebase_book_read.dart';

class BookStore extends StatefulWidget {
  String Category;

  BookStore({required this.Category, super.key});

  @override
  State<BookStore> createState() => _BookStoreState();
}

class _BookStoreState extends State<BookStore> {

  String type = '';
  String book_type= '';

    List<Book> MotivationalBooks = getMotivationalBookList();


  // List for History Book in All Alnguages
  List<Book> UrduHistoricBooks = getUrduHistoricBookList();
  List<Book> PashtoHistoricBooks = getPashtoHistoricBookList();
  List<Book> ArabicHistoricBooks = getArabicHistoricBookList();
  List<Book> EnglishHistoricBooks = getEnglishHistoricBookList();

 // List for Hadits Book in All Alnguages
  List<Book> UrduHaditsBooks = getUrduHaditsBookList();
  List<Book> PashtoHaditsBooks = getPashtoHaditsBookList();
  List<Book> ArabicHaditsBooks = getArabicHaditsBookList();
  List<Book> EnglishHaditsBooks = getEnglishHaditsBookList();

 // List for Hadits Book in All Alnguages
  List<Book> UrduTasfeerBooks = getUrduTafseerBookList();
  List<Book> PashtoTafseerBooks = getPashtoTafseerBookList();
  List<Book> ArabicTafseerBooks = getArabicTafseerBookList();
  List<Book> EnglishTafseerBooks = getEnglishTafseerBookList();  


 // List for Fiqa Book in All Alnguages
  List<Book> UrduFiqhaBooks = getUrduFiqaBookList();
  List<Book> PashtoFiqhaBooks = getPashtoFiqaBookList();
  List<Book>  EnglishFiqhaBooks = getEnglishFiqaBookList();
  List<Book> ArabicFiqhaBooks = getArabicFiqaBookList();  

 // List for Fathwa Book in All Alnguages
  List<Book> UrduFathwaBooks = getUrduFathwaBookList();
  List<Book> PashtoFathwaBooks = getPashtoFathwaBookList();
  List<Book>  EnglishFathwaBooks = getEnglishFathwaBookList();
  List<Book> ArabicFathwaBooks = getArabicFathwaBookList();

 // List for Darsi Book in All Alnguages
  List<Book> UrduDarsiBooks = getUrduDarsiBookList();
  List<Book> PashtoDarsiBooks = getPashtoDarsiBookList();
  List<Book>  EnglishDarsiBooks = getEnglishDarsiBookList();
  List<Book> ArabicDarsiBooks = getArabicDarsiBookList(); 

  // list to store book of firebase
    List<dynamic> _files = [];
    
     late bool isFilesLoaded;
//   late BannerAd _bannerAd;
//   bool isAdLoaded=false;

//  initBannerAd(){
//   _bannerAd= BannerAd(
//     size: AdSize.banner, 
//     adUnitId:AdsId.kAdUnitId , 
//     listener: BannerAdListener(
//       onAdLoaded: (ad) {
//         setState(() {
//           isAdLoaded=true;
//         });
//       },
//       onAdFailedToLoad: (ad, error) {
        
//       },
//     ), 
//     request: AdRequest()
//     );
//     _bannerAd.load();
//  }




  @override
  void initState() {
        // initBannerAd(); 
            isFilesLoaded =true;
    Future.delayed(Duration(seconds: 1),(){
      setState(() {
        isFilesLoaded=false;
      });
    }); 

    type = widget.Category;
        print("to check type in local book store::${type}");

    book_type = widget.Category;
    print("build_books::${type}");

        _getFiles();


    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    Connectivity connectivity= Connectivity();
    return Scaffold(
      backgroundColor: AppColor.kbgColor,
      appBar: AppBar(
        title: Text(
          // "${widget.Category}",
          "Discover Books",
          style: TextStyle(color: AppColor.kTextColor),
        ),
        elevation: 0,
        backgroundColor: AppColor.kgreyColor,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: AppColor.kTextColor),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            padding: EdgeInsets.only(top: 16, left: 16, right: 16),
            decoration: BoxDecoration(
              color: AppColor.kgreyColor,
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(40),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 8,
                  blurRadius: 12,
                  offset: Offset(0, 3),
                ),
              ],
            ),

            // below app bar
            //   child: Column(
            //     crossAxisAlignment: CrossAxisAlignment.start,
            //     children: [
            //       SizedBox(
            //         height: 16,
            //       ),
            //     ],
            //   ),
            //
          ),

          //List viiew for book scrolling
          Expanded(
            child: Container(
              child: ListView(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                children: buildBooks(),
              ),
            ),
          ),

          // more books section
          Container(
            decoration: BoxDecoration(
              color: AppColor.kgreyColor,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40), ),
            ),
            child: Column(
              
              children: [
                InkWell(
                  onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>MyFireBaseStorageList(Category: type, MotivationalCategory: book_type,)));

                  },
                  child: Padding(
                    padding: EdgeInsets.all(24),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "More Books",
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            Row(
                              children: [
                                Text(
                                  "Show all",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    // color: kPrimaryColor,
                                  ),
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Icon(
                                  Icons.arrow_forward,
                                  size: 18,
                                  // color: kPrimaryColor,
                                ),
                              ],
                            ),
                          ],
                        ),
                        // SizedBox(height: MediaQuery.of(context).size.height/90,),
                              SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(children: [
                                  SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    child: Text("Internet connection required for online books"))
                                ],),
                              ),

                      ],
                    ),
                
                  ),
                  
                ),
                //call Books Form Fire base
                Container(
                  height: MediaQuery.of(context).size.height/5,
                  // margin: EdgeInsets.only(bottom: 8),
                  child: Container(
                    height: MediaQuery.of(context).size.height/10,


        child: StreamBuilder<ConnectivityResult>(
          stream: connectivity.onConnectivityChanged,
          builder: (context, snapshot) {
          return InternetConnectivityWidget(snapshot: snapshot, widget:
           isFilesLoaded? ListView.separated(
              
              itemBuilder: ((context, index) => CardSkeleton()), 
              separatorBuilder: ((context, index) => SizedBox()),
              itemCount: 10):
              Center(
                child:_files.length >0? ListView.builder(
                  itemCount: _files.length,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.only(left: 8,right: 8,bottom: 3),
                      padding: EdgeInsets.all(3),
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
                      } else if (book_type ==
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
                ): Column(children: [
              Lottie.asset('assets/animations/notAvailable.json',height: MediaQuery.of(context).size.height/6),
              Text("We apologize books of this kind are not available.",style:Theme.of(context).textTheme.caption),
              ],)
              )
,              
          );
        },)
        
        
              ),
                ),
              ],
            ),
          ),
        ],
      ),
      //  bottomNavigationBar: isAdLoaded? Container(
      //   decoration: BoxDecoration(color: AppColor.kgreyColor),
      //   height: _bannerAd.size.height.toDouble(),
      //   width: _bannerAd.size.width.toDouble(),
      //   child:AdWidget(ad: _bannerAd) ,
      // ):SizedBox(),
    );
  }


  // add Books here form model to return on screen
  List<Widget> buildBooks() {
  List<Widget> list = [];
    //  Historic Books in all Languages
    if (type == 'buildUrduHistoricBooks') {
      for (var i = 0; i < UrduHistoricBooks.length; i++) {
        list.add(buildBook(UrduHistoricBooks[i], i));
      }
    } else if (type == 'buildPashtoHistoricBooks') {
      for (var i = 0; i < PashtoHistoricBooks.length; i++) {
        list.add(buildBook(PashtoHistoricBooks[i], i));
      }
    } else if (type == 'buildEnglishHistoricBooks') {
      for (var i = 0; i < EnglishHistoricBooks.length; i++) {
        list.add(buildBook(EnglishHistoricBooks[i], i));
      }
    } else if (type == 'buildArabicHistoricBooks') {
      for (var i = 0; i < ArabicHistoricBooks.length; i++) {
        list.add(buildBook(ArabicHistoricBooks[i], i));
      }
    }
    // Hadits Books in All Langugages
    if (type == 'buildUrduHaditsBooks') {
      for (var i = 0; i < UrduHaditsBooks.length; i++) {
        list.add(buildBook(UrduHaditsBooks[i], i));
      }
    } else if (type == 'buildArabicHaditsBooks') {
      for (var i = 0; i < ArabicHaditsBooks.length; i++) {
        list.add(buildBook(ArabicHaditsBooks[i], i));
      }
    } else if (type == 'buildEnglishHaditsBooks') {
      for (var i = 0; i < EnglishHaditsBooks.length; i++) {
        list.add(buildBook(EnglishHaditsBooks[i], i));
      }
    } else if (type == 'buildPashtoHaditsBooks') {
      for (var i = 0; i < PashtoHaditsBooks.length; i++) {
        list.add(buildBook(PashtoHaditsBooks[i], i));
      }
    }
    // Tafseer Books in All Langugages
    if (type == 'buildUrduTafseerBooks') {
      for (var i = 0; i < UrduTasfeerBooks.length; i++) {
        list.add(buildBook(UrduTasfeerBooks[i], i));
      }
    } else if (type == 'buildArabicTafseerBooks') {
      for (var i = 0; i < ArabicTafseerBooks.length; i++) {
        list.add(buildBook(ArabicTafseerBooks[i], i));
      }
    } else if (type == 'buildEnglishTafseerBooks') {
      for (var i = 0; i < EnglishTafseerBooks.length; i++) {
        list.add(buildBook(EnglishTafseerBooks[i], i));
      }
    } else if (type == 'buildPashtoTafseerBooks') {
      for (var i = 0; i < PashtoTafseerBooks.length; i++) {
        list.add(buildBook(PashtoTafseerBooks[i], i));
      }
    }
  // Fiqha Books in All Langugages
    if (type == 'buildUrduFiqaBooks') {
      for (var i = 0; i < UrduFiqhaBooks.length; i++) {
        list.add(buildBook(UrduFiqhaBooks[i], i));
      }
    } else if (type == 'buildArabicFiqaBooks') {
      for (var i = 0; i < ArabicFiqhaBooks.length; i++) {
        list.add(buildBook(ArabicFiqhaBooks[i], i));
      }
    } else if (type == 'buildEnglishFiqaBooks') {
      for (var i = 0; i < EnglishFiqhaBooks.length; i++) {
        list.add(buildBook(EnglishFiqhaBooks[i], i));
      }
    } else if (type == 'buildPashtoFiqaBooks') {
      for (var i = 0; i < PashtoFiqhaBooks.length; i++) {
        list.add(buildBook(PashtoFiqhaBooks[i], i));
      }
    }

  // Fathwa Books in All Langugages
    if (type == 'buildUrduFathwaBooks') {
      for (var i = 0; i < UrduFathwaBooks.length; i++) {
        list.add(buildBook(UrduFathwaBooks[i], i));
      }
    } else if (type == 'buildArabicFathwaBooks') {
      for (var i = 0; i < ArabicFathwaBooks.length; i++) {
        list.add(buildBook(ArabicFathwaBooks[i], i));
      }
    } else if (type == 'buildEnglishFathwaBooks') {
      for (var i = 0; i < EnglishFathwaBooks.length; i++) {
        list.add(buildBook(EnglishFathwaBooks[i], i));
      }
    } else if (type == 'buildPashtoFathwaBooks') {
      for (var i = 0; i < PashtoFathwaBooks.length; i++) {
        list.add(buildBook(PashtoFathwaBooks[i], i));
      }
    }

  // Darsi Books in All Langugages
    if (type == 'buildUrduDarsiBooks') {
      for (var i = 0; i < UrduDarsiBooks.length; i++) {
        list.add(buildBook(UrduDarsiBooks[i], i));
      }
    } else if (type == 'buildArabicDarsiBooks') {
      for (var i = 0; i < ArabicDarsiBooks.length; i++) {
        list.add(buildBook(ArabicDarsiBooks[i], i));
      }
    } else if (type == 'buildEnglishDarsiBooks') {
      for (var i = 0; i < EnglishDarsiBooks.length; i++) {
        list.add(buildBook(EnglishDarsiBooks[i], i));
      }
    } else if (type == 'buildPashtoDarsiBooks') {
      for (var i = 0; i < PashtoDarsiBooks.length; i++) {
        list.add(buildBook(PashtoDarsiBooks[i], i));
      }
    }

  // Motivational Books
    if (book_type == 'NavigateToMotivationalBooks') {
      for (var i = 0; i < MotivationalBooks.length; i++) {
        list.add(buildBook(MotivationalBooks[i], i));
      }
    }






    return list;
  }

  Widget buildBook(Book book, int index) {
    // Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) =>BookRead(book: book),
        ));
      },
      child: Container(
        margin:
        EdgeInsets.only(right: 32, left: index == 0 ? 16 : 0, bottom: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Expanded(
              child: Container(
                // width: 250,
                // width: MediaQuery.of(context).size.width * 0.8,
              width: MediaQuery.of(context).size.width * 0.6,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 8,
                      blurRadius: 12,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                margin: EdgeInsets.only(
                  bottom: 1,
                  top: 4,
                ),
                child: Hero(
                  tag: book.title,
                  child: Image.asset(
                    book.image,
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 30,
              // height: 12,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.6,
              child: Column(
                children: [
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Text(
                            book.title,
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        // SizedBox(width: 11,),
                        // GestureDetector(
                        //   onTap: (() {
                        //     Navigator.of(context).push(MaterialPageRoute(builder: (context)=>BookDetail(book: book)));
                        //   }),

                        //   child: Container(
                        //     decoration: BoxDecoration(
                        //       color: AppColor.kIconOnPressColor,
                        //       borderRadius: BorderRadius.all(
                        //         Radius.circular(15),
                        //       ),
                        //       boxShadow: [
                        //         BoxShadow(
                        //           color: AppColor.kIconOnPressColor.withOpacity(0.4),
                        //           spreadRadius: 2,
                        //           blurRadius: 2,
                        //           offset: Offset(0, 0),
                        //         ),
                        //       ],
                        //     ),
                        //     child: Padding(
                        //       padding: const EdgeInsets.all(8.0),
                        //       child: Center(
                        //         child: Row(
                        //           mainAxisAlignment: MainAxisAlignment.center,
                        //           children: [
                        //             Text(
                        //               "Details",
                        //             ),
                        //             SizedBox(
                        //               width: 8,
                        //             ),
                        //             Icon(
                        //               Icons.keyboard_arrow_down,
                        //               color: AppColor.kIconColor,
                        //             ),
                        //           ],
                        //         ),
                        //       ),
                        //     ),
                        //   ),
                        //   // child: Text(
                        //   //   "Details",
                        //   //   style: TextStyle(
                        //   //     fontSize: 14,
                        //   //     color: AppColor.kIconOnPressColor,
                        //   //     fontWeight: FontWeight.bold,
                        //   //   ),
                        //   // ),
                        // ),
                      ]),
                      SizedBox(height: 8,),
                      Row(
                        children: [
                           GestureDetector(
                          onTap: (() {
                            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>BookDetail(book: book)));
                          }),

                          child: Container(
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
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Center(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Details",
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
                          // child: Text(
                          //   "Details",
                          //   style: TextStyle(
                          //     fontSize: 14,
                          //     color: AppColor.kIconOnPressColor,
                          //     fontWeight: FontWeight.bold,
                          //   ),
                          // ),
                        ),
                        ],
                      ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

// to get files form forebase
   void _getFiles() async {
    if (type == 'buildUrduDarsiBooks') {
      var files = await FirebaseStorage.instance
          .ref()
          .child('Books/Islamic Books/Urdu/Darsi/')
          .listAll();
      setState(() {
        _files = files.items;
      });
     
    } else if (type == 'buildUrduFathwaBooks') {
      var files = await FirebaseStorage.instance
          .ref()
          .child('Books/Islamic Books/Urdu/Fathwa/')
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
    } else if (book_type == 'NavigateToMotivationalBooks') {
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
class InternetConnectivityWidget extends StatelessWidget {
  final AsyncSnapshot<ConnectivityResult> snapshot;
  final Widget widget;
  const InternetConnectivityWidget({super.key, required this.snapshot, required this.widget,});

  @override
  Widget build(BuildContext context) {
    switch(snapshot.connectionState){
      case ConnectionState.active:
      final state = snapshot.data!;
      switch(state){
        case ConnectivityResult.none:
        return Column(children: [
              Lottie.asset('assets/animations/nointernet.json',height: MediaQuery.of(context).size.height/6),
              SizedBox(height: 5,),
              Text("No internet connection!.",style:Theme.of(context).textTheme.caption),
              ],);
              default:
              return widget;
      }
      default:
      return widget;

    }
    
  }
}
