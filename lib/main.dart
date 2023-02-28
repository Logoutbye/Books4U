import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:islamic_book_app/Provider/continue_reading_provider.dart';
import 'package:islamic_book_app/Utility/colors.dart';
import 'package:islamic_book_app/View/first_screen.dart';
import 'package:provider/provider.dart';


void main() async {
  // firebase intialization
  WidgetsFlutterBinding.ensureInitialized();
  MobileAds.instance.initialize();
  await Firebase.initializeApp();

  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    systemNavigationBarColor: AppColor.kgreyColor,
    statusBarColor: AppColor.kgreyColor,
  ));

  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return ChangeNotifierProvider(
      create: (_) =>ContinueReadingProvider(),
      child:MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Books4U',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FirstScreen(),
    ),
    );

  }
}
