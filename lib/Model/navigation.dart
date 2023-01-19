import 'package:flutter/material.dart';
import 'package:islamic_book_app/View/OtherFeatures/qibla.dart';
import 'package:islamic_book_app/View/OtherFeatures/tasbhee_counter.dart';

import '../Utility/colors.dart';
import '../View/OtherFeatures/contribution.dart';

class BottomNavigationBarr extends StatefulWidget {
  const BottomNavigationBarr({super.key});

  @override
  State<BottomNavigationBarr> createState() => _BottomNavigationBarrState();
}

class _BottomNavigationBarrState extends State<BottomNavigationBarr> {
  int pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      decoration: BoxDecoration(
        color: AppColor.kgreyColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25),
          topRight: Radius.circular(25),
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
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
              enableFeedback: false,
              onPressed: () {
                setState(() {
                  pageIndex = 0;
                });
              },
              icon: const Icon(
                Icons.home_filled,
                color: AppColor.kIconOnPressColor,
                size: 35,
              )),
          //   icon: pageIndex == 0
          //       ? const Icon(
          //           Icons.home_filled,
          //           color: AppColor.kIconColor,
          //           size: 35,
          //         )
          //       : const Icon(
          //           Icons.home_outlined,
          //           color: AppColor.kIconOnPressColor,
          //           size: 35,
          //         ),
          // ),
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 1;
              });
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => TasbheeCounter()));
            },
            icon: ImageIcon(
              AssetImage("assets/images/rosary.png"),
            ),
            // icon: pageIndex == 1
            //     ? const Icon(
            //         Icons.work_rounded,
            //         color: AppColor.kIconColor,
            //         size: 35,
            //       )
            //     : const Icon(
            //         Icons.work_outline_outlined,
            //         color: AppColor.kIconOnPressColor,
            //         size: 35,
            //       ),
          ),
          IconButton(
            enableFeedback: true,
            onPressed: () {
              setState(() {
                pageIndex = 2;
              });
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => Qibla()));
            },
            icon: ImageIcon(
              AssetImage("assets/images/qibla.png"),
            ),
            // icon: pageIndex == 2
            //     ? const Icon(
            //         Icons.widgets_rounded,
            //         color: AppColor.kIconColor,
            //         size: 35,
            //       )
            //     : const Icon(
            //         Icons.widgets_outlined,
            //         color: AppColor.kIconOnPressColor,
            //         size: 35,
            //       ),
          ),
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 3;
              });
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => Contribution()));
            },
            icon: Icon(Icons.add_card_rounded),
            // icon: pageIndex == 3
            //     ? const Icon(
            //         Icons.person,
            //         color:AppColor.kIconColor,
            //         size: 35,
            //       )
            //     : const Icon(
            //         Icons.person_outline,
            //         color: AppColor.kIconOnPressColor,
            //         size: 35,
            //       ),
          ),
        ],
      ),
    );
  }
}
