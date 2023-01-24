import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamic_book_app/Utility/colors.dart';
import 'package:islamic_book_app/View/first_screen.dart';

import 'View/home_screen.dart';

void main() async {
  // firebase intialization
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    systemNavigationBarColor: AppColor.kgreyColor,
    statusBarColor: AppColor.kgreyColor,
  ));

  runApp(const MyApp());
  await initilization(null);
}


Future initilization(BuildContext? context) async{
  await Future.delayed(Duration(seconds: 3));
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Books4U',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FirstScreen(),
    );
  }
}
