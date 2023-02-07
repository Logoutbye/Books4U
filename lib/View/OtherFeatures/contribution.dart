// //import 'dart:html';
// import 'dart:io';
// import 'package:file_picker/file_picker.dart';
// import 'package:firebase_storage/firebase_storage.dart';
// import 'package:flutter/material.dart';
// import 'package:islamic_book_app/Utility/colors.dart';

// // File file = File("");

// class Contribution extends StatefulWidget {
//   const Contribution({super.key});

//   @override
//   State<Contribution> createState() => _ContributionState();
// }

// class _ContributionState extends State<Contribution> {
//   bool isPdfUploaded = false; // to check weather file is uploaded or not
//   bool isBookTitlePageSelected =
//       false; // to check weather book Title is uploaded  or not
//   String fileName = '';
//   String bookTitlePageImagePath = '';

//   final GlobalKey<FormState> _formKey = GlobalKey();
//   String title = "";
//   String description = "";

//   // drop down list
//   var bookCatagories = [
//     'Select Book Category',
//     'Islamic Book',
//     'Motivational Book',
//   ];
//   var motivationalBooksLanguages = [
//     'Select Book Language',
//     'English',
//     'Urdu',
//   ];

//   var motivationalBooksTypes = [
//     'Select Book Type',
//     'Self-help books',
//     'Inspirational books',
//     'Personal development books',
//     'Business and career books',
//     'Mindfulness and meditation books',
//   ];

//   var islmaicBooksLanguages = [
//     'Select Book Language',
//     'English',
//     'Urdu',
//     'Arabi',
//     'Pashto',
//   ];
//   var islamicBookTypes = [
//     'Select Book Type',
//     'Tafseer',
//     'Fiqa',
//     'Hadith',
//     'Masnoon',
//   ];

//   // variables for conditions down in dropdown conditions
//   String selectedMotivatinalBookType = '';
//   String selectedMotivatinalBookLanguage = '';
//   String selectedCatagory = '';
//   String selectedIslamicBookType = '';
//   String selectedIslamicBookLanguage = '';
//   var finalSelectedBookType = '';
//   var finalSelectedBookLanguage = '';

//   @override
//   void initState() {
//     selectedCatagory = bookCatagories[0];
//     selectedIslamicBookType = islamicBookTypes[0];
//     selectedIslamicBookLanguage = islmaicBooksLanguages[0];
//     selectedMotivatinalBookType = motivationalBooksTypes[0];
//     selectedMotivatinalBookLanguage = motivationalBooksLanguages[0];
//     // TODO: implement initState
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         backgroundColor: AppColor.kbgColor,
//         appBar: AppBar(
//           title: Text(
//             "Upload Book",
//             style: TextStyle(color: AppColor.kTextColor),
//           ),
//           backgroundColor: AppColor.kgreyColor,
//           leading: IconButton(
//             icon: Icon(
//               Icons.arrow_back,
//             ),
//             color: Colors.black,
//             onPressed: () {
//               Navigator.pop(context);
//             },
//           ),
//           centerTitle: true,
//         ),
//         body: Container(
//           width: double.infinity,
//           decoration: BoxDecoration(
//             image: DecorationImage(
//               image: AssetImage('assets/images/bg_bg.png'),
//               alignment: Alignment.topCenter,
//               fit: BoxFit.fill,
//             ),
//           ),
//           child: Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: SingleChildScrollView(
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: <Widget>[
//                   // Book title Container
//                   Container(
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(29),
//                       color: AppColor.kgreyColor,
//                       // border: Border.all(color: Colors.grey)
//                     ),
//                     padding: EdgeInsets.fromLTRB(16, 8, 8, 8),
//                     child: TextFormField(
//                       decoration: InputDecoration(
//                           labelText: 'Enter Title of the Book',
//                           border: InputBorder.none),
//                       keyboardType: TextInputType.name,
//                       onFieldSubmitted: (value) {
//                         setState(() {
//                           title = value;
//                         });
//                       },
//                       validator: (value) {
//                         if (value!.isEmpty) {
//                           return 'Please enter Tilte of the Book!';
//                         }
//                       },
//                     ),
//                   ),
//                   SizedBox(
//                     height: 20,
//                   ),
//                   // Dropdown for selecting Book Catagory
//                   Container(
//                       width: double.infinity,
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(29),
//                         color: AppColor.kgreyColor,
//                         // border: Border.all(color: Colors.grey)
//                       ),
//                       height: 75,
//                       child: Padding(
//                         padding: const EdgeInsets.all(8.0),
//                         child: DropdownButton(
//                             //elevation: 30,
//                             //alignment: AlignmentDirectional.center,
//                             //elevation: 80,
//                             isDense: true,
//                             iconSize: 40,
//                             isExpanded: true,
//                             dropdownColor: Colors.white,
//                             style: TextStyle(
//                               color: Colors.black,
//                             ),
//                             value: selectedCatagory,
//                             items: bookCatagories.map((String itemss) {
//                               return DropdownMenuItem(
//                                 value: itemss,
//                                 child: Text(itemss),
//                               );
//                             }).toList(),
//                             onChanged: (String? newValue) {
//                               setState(() {
//                                 selectedCatagory = newValue!;
//                               });
//                             }),
//                       )),

//                   SizedBox(
//                     height: 20,
//                   ),
//                   // Dropdown for selecting Book Type
//                   Container(
//                     width: double.infinity,
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(29),
//                       color: AppColor.kgreyColor,
//                       // border: Border.all(color: Colors.grey)
//                     ),
//                     height: 75,
//                     child: Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: DropdownButton(
//                           //elevation: 30,
//                           //alignment: AlignmentDirectional.center,
//                           //elevation: 80,
//                           isDense: true,
//                           iconSize: 40,
//                           isExpanded: true,
//                           dropdownColor: Colors.white,
//                           style: TextStyle(
//                             color: Colors.black,
//                           ),
//                           value: selectedCatagory == 'Islamic Book'
//                               ? selectedIslamicBookType
//                               : selectedMotivatinalBookType,
//                           items: selectedCatagory == 'Islamic Book'
//                               ? islamicBookTypes.map((String itemss) {
//                                   return DropdownMenuItem(
//                                     value: itemss,
//                                     child: Text(itemss),
//                                   );
//                                 }).toList()
//                               : motivationalBooksTypes.map((String itemss) {
//                                   return DropdownMenuItem(
//                                     value: itemss,
//                                     child: Text(itemss),
//                                   );
//                                 }).toList(),
//                           onChanged: (String? newValue) {
//                             setState(() {
//                               if (selectedCatagory == 'Islamic Book') {
//                                 selectedIslamicBookType = newValue!;
//                               } else {
//                                 selectedMotivatinalBookType = newValue!;
//                               }

//                               finalSelectedBookType = newValue;
//                             });
//                           }),
//                     ),
//                   ),

//                   SizedBox(
//                     height: 20,
//                   ),
//                   // Dropdown for selecting Book language
//                   Container(
//                       width: double.infinity,
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(29),
//                         color: AppColor.kgreyColor,
//                         // border: Border.all(color: Colors.grey)
//                       ),
//                       height: 75,
//                       child: Padding(
//                         padding: const EdgeInsets.all(8.0),
//                         child: DropdownButton(
//                             //elevation: 30,
//                             //alignment: AlignmentDirectional.center,
//                             //elevation: 80,
//                             isDense: true,
//                             iconSize: 40,
//                             isExpanded: true,
//                             dropdownColor: Colors.white,
//                             style: TextStyle(
//                               color: Colors.black,
//                             ),
//                             value: selectedCatagory == 'Islamic Book'
//                                 ? selectedIslamicBookLanguage
//                                 : selectedMotivatinalBookLanguage,
//                             items: selectedCatagory == 'Islamic Book'
//                                 ? islmaicBooksLanguages.map((String itemss) {
//                                     return DropdownMenuItem(
//                                       value: itemss,
//                                       child: Text(itemss),
//                                     );
//                                   }).toList()
//                                 : motivationalBooksLanguages
//                                     .map((String itemss) {
//                                     return DropdownMenuItem(
//                                       value: itemss,
//                                       child: Text(itemss),
//                                     );
//                                   }).toList(),
//                             onChanged: (String? newValue) {
//                               setState(() {
//                                 if (selectedCatagory == 'Islamic Book') {
//                                   selectedIslamicBookLanguage = newValue!;
//                                 } else {
//                                   selectedMotivatinalBookLanguage = newValue!;
//                                 }

//                                 finalSelectedBookLanguage = newValue;
//                               });
//                             }),
//                       )),

//                   SizedBox(
//                     height: 20,
//                   ),

//                   //Discription Field
//                   Container(
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(29),
//                       color: AppColor.kgreyColor,
//                       // border: Border.all(color: Colors.grey)
//                     ),
//                     padding: EdgeInsets.fromLTRB(16, 8, 8, 8),
//                     child: TextFormField(
//                       textAlign: TextAlign.start,
//                       maxLength: 430,
//                       maxLines: 5,
//                       decoration: InputDecoration(
//                           labelText: 'Enter Description',
//                           border: InputBorder.none),
//                       keyboardType: TextInputType.text,
//                       //obscureText: true,
//                       validator: (value) {
//                         if (value!.isEmpty) {
//                           return 'Please enter the Description!';
//                         }
//                       },
//                       onFieldSubmitted: (value) {
//                         setState(() {
//                           description = value;
//                         });
//                       },
//                     ),
//                   ),

//                   ///////////////////////////////////////////

//                   SizedBox(
//                     height: 20,
//                   ),

//                   // Container That shows file upload button
//                   InkWell(
//                     //splashColor: Colors.red,
//                     onTap: () async {
//                       selectFile();
//                     },
//                     child: Container(
//                       height: 60,
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(29),
//                         color: Colors.blue,
//                         // border: Border.all(color: Colors.grey)
//                       ),
//                       child: Center(
//                         child: Container(
//                           child: SingleChildScrollView(
//                             scrollDirection: Axis.horizontal,
//                             child: Row(
//                               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                               children: [
//                                 // Text container
//                                 Container(
//                                   child: Center(
//                                     child: Text(
//                                       'Select PDF book',
//                                       style: TextStyle(
//                                         color: Colors.white,
//                                         fontSize: 16,
//                                       ),
//                                     ),
//                                   ),
//                                 ),
//                                 SizedBox(
//                                   width: 10,
//                                 ),
//                                 // Icon container
//                                 Container(
//                                   child: Center(
//                                     child: Icon(
//                                       Icons.picture_as_pdf,
//                                       color: Colors.white,
//                                       size: 40,
//                                     ),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),

//                   SizedBox(
//                     height: 20,
//                   ),

//                   // Container That shows file to be uploaded
//                   isPdfUploaded
//                       ? Container(
//                           height: 65,
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(29),
//                             color: AppColor.kgreyColor,
//                             // border: Border.all(color: Colors.grey)
//                           ),
//                           child: Center(
//                             child: Padding(
//                               padding:
//                                   const EdgeInsets.only(left: 10, right: 10),
//                               child: Text('Selected file : ${fileName}'),
//                             ),
//                           ),
//                         )
//                       : Container(),

//                   /////////////////////////

//                   SizedBox(
//                     height: 20,
//                   ),

//                   // Container That shows image upload button
//                   InkWell(
//                     //splashColor: Colors.red,
//                     onTap: () async {
//                       selectBookTitlePage();
//                     },
//                     child: Container(
//                       height: 60,
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(29),
//                         color: Colors.blue,
//                         // border: Border.all(color: Colors.grey)
//                       ),
//                       child: Center(
//                         child: Container(
//                           child: SingleChildScrollView(
//                             scrollDirection: Axis.horizontal,
//                             child: Row(
//                               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                               children: [
//                                 // Text container
//                                 Container(
//                                   child: Center(
//                                     child: Text(
//                                       'Select book title picture',
//                                       style: TextStyle(
//                                         color: Colors.white,
//                                         fontSize: 16,
//                                       ),
//                                     ),
//                                   ),
//                                 ),
//                                 SizedBox(
//                                   width: 10,
//                                 ),
//                                 // Icon container
//                                 Container(
//                                   child: Center(
//                                     child: Icon(
//                                       Icons.image,
//                                       color: Colors.white,
//                                       size: 40,
//                                     ),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),

//                   SizedBox(
//                     height: 20,
//                   ),
//                   isBookTitlePageSelected & bookTitlePageImagePath.isNotEmpty
//                       ? Container(
//                           height: MediaQuery.of(context).size.height / 2.5,
//                           width: MediaQuery.of(context).size.width,
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(5),
//                             color: AppColor.kgreyColor,
//                             // border: Border.all(color: Colors.grey)
//                           ),
//                           child: Padding(
//                             padding: const EdgeInsets.all(8),
//                             child: Image.file(
//                               File(bookTitlePageImagePath),
//                               fit: BoxFit.cover,
//                             ),
//                           ),
//                         )
//                       : Container(),
//                   /////////
//                   ///
//                   SizedBox(
//                     height: 20,
//                   ),

//                   // Upload button
//                   Container(
//                     width: MediaQuery.of(context).size.width / 2,
//                     decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(5),
//                         color: Colors.blue,
//                         border: Border.all(color: Colors.white)
//                         // border: Border.all(color: Colors.grey)
//                         ),
//                     child: TextButton(
//                         onPressed: () {
//                           uploadPdfFileToFirebaseStorage();
//                         },
//                         child: Text(
//                           'Upload',
//                           style: TextStyle(
//                             fontSize: 16,
//                             color: Colors.white,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         )),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ));
//   }

//   // for picking PDf file
//   late File pickedPdfFile;
//   Future selectFile() async {
//     final result = await FilePicker.platform
//         .pickFiles(type: FileType.custom, allowedExtensions: ['pdf']);
//     //var alpha = result!.paths;

//     if (result == null) return;
//     setState(() {
//       pickedPdfFile = File(result.files.first.path.toString());
//       // print(
//       //     '//////////////////////////////////////// ================= $pickedFile');
//       fileName = result.paths[0]!.split('/').last.toString();
//       isPdfUploaded = true;
//     });
//   }

// // Select Title page for book
//   Future selectBookTitlePage() async {
//     final result = await FilePicker.platform.pickFiles(type: FileType.image);
//     //var alpha = result!.paths;

//     if (result == null) return;
//     setState(() {
//       // pickedFile = result.files.last;
//       bookTitlePageImagePath = result.files.first.path.toString();
//       // print(
//       //     '////////////////////////////////////////================= $bookTitlePageImagePath');
//       isBookTitlePageSelected = true;
//     });
//   }

// // Open Selected Image File

//   void _submit() {
//     // you can write your
//     // own code according to
//     // whatever you want to submit;
//   }

//   // upload pdf file into firebase storage
//    uploadPdfFileToFirebaseStorage() async {
//     UploadTask uploadTask = FirebaseStorage.instance
//         .ref()
//         .child('Books')
//         .child(selectedCatagory)
//         .child(finalSelectedBookType)
//         .child(finalSelectedBookLanguage)
//         .putFile(pickedPdfFile);
//   }
// }

import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:islamic_book_app/Utility/colors.dart';

class Contribution extends StatefulWidget {
  String text;
   Contribution({required this.text,super.key});

  @override
  State<Contribution> createState() => _ContributionState();
}

class _ContributionState extends State<Contribution>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  String? textmsg;
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
    textmsg =widget.text;
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text(
          "    Opps...",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: AppColor.kgreyColor,
            leading: IconButton(
              icon: const Icon(
                Icons.arrow_back,
                color:AppColor.kgreyColor ,
              ),
              onPressed: () {},
            ),
        
      
      ),
      body:  Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/bg_bg.png'),
            alignment: Alignment.topCenter,
            fit: BoxFit.fill,
              colorFilter: ColorFilter.mode(Colors.black, BlendMode.softLight)

          ),
        ),
        child: Center(child:
         Padding(
           padding: const EdgeInsets.all(16.0),
           child:textmsg =="language"? RichText(
                        text: TextSpan(
                            style: Theme.of(context).textTheme.displaySmall,
                            children: [
                          TextSpan(
                              text: "We are\n",
                              style: TextStyle(color: Colors.white)),
                          TextSpan(
                              text: "Collecting Books\n",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white)),
                          TextSpan(
                              text: "Stay Tuned!\n",
                              style: TextStyle(color: Colors.white))
                        ])) : RichText(
                        text: TextSpan(
                            style: Theme.of(context).textTheme.displaySmall,
                            children: [
                          TextSpan(
                              text: "We are \n",
                              style: TextStyle(color: Colors.white)),
                          TextSpan(
                              text: "Managing Books\n",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white)),
                          TextSpan(
                              text: "Stay Tuned!\n",
                              style: TextStyle(color: Colors.white))
                        ])) 
         ),
      
    )),
     bottomNavigationBar: isAdLoaded? Container(
      decoration: BoxDecoration(color: AppColor.kgreyColor),
        height: _bannerAd.size.height.toDouble(),
        width: _bannerAd.size.width.toDouble(),
        child:AdWidget(ad: _bannerAd) ,
      ):SizedBox(),
    );
  }
}
