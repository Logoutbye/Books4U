import 'package:flutter/material.dart';
import 'package:islamic_book_app/Utility/colors.dart';
import 'package:islamic_book_app/View/OtherFeatures/contribution.dart';
import 'package:islamic_book_app/View/OtherFeatures/qibla.dart';
import 'package:islamic_book_app/View/OtherFeatures/tasbhee_counter.dart';
import 'package:islamic_book_app/View/home_screen.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {

    var index=0;
    final screen =[
      HomeScreen(),
      TasbheeCounter(),
      Qibla(),
      Contribution(),
    ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screen[index],
       bottomNavigationBar: NavigationBarTheme(
          data:NavigationBarThemeData(
          indicatorColor: AppColor.kgreyColor,
          ),
          child: NavigationBar(
            backgroundColor: AppColor.kgreyColor,
            selectedIndex: index,
            labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
            animationDuration: Duration(seconds: 2),
            onDestinationSelected: (index) => 
            setState(() {
              this.index=index;
            }),
            destinations: [
              NavigationDestination(icon: Icon(
                    Icons.home_outlined,
                    color:AppColor.kIconColor, 
                  ),
                  selectedIcon:Icon(
                    Icons.home_filled,
                    color: AppColor.kIconOnPressColor,

                  ) ,
                   label: "Home"),
              NavigationDestination(icon: ImageIcon(
              AssetImage("assets/images/tasbih1.png"),
                    color: AppColor.kIconColor,
                    size: 35,
                  ),
                  selectedIcon: ImageIcon(
              AssetImage("assets/images/tasbih2.png"),
                    color: AppColor.kIconOnPressColor,
                    size: 35,
                  ),
                   label: "Tasbih"),
              NavigationDestination(icon: ImageIcon(
              AssetImage("assets/images/qibla1.png"),
              color: AppColor.kIconColor,
                  ), 
                  selectedIcon: ImageIcon(
              AssetImage("assets/images/qibla2.png"),
              color: AppColor.kIconOnPressColor,
                  ) ,
                  label: "Qibla"),
              NavigationDestination(icon: Icon(
                    Icons.add_card_outlined,
                    color:AppColor.kIconColor,
                  ),
                  selectedIcon: Icon(
                    Icons.add_card_rounded,
                    color: AppColor.kIconOnPressColor,
                  ),
                   label: "Contribution"),
            ]
            ),
        ),
    
    );
  }
}