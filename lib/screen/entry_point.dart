import 'package:artistic_app/constant/constant.dart';
import 'package:artistic_app/data/model/bottom_nav_model.dart';
import 'package:artistic_app/screen/home_screen.dart';
import 'package:artistic_app/screen/like_screen.dart';
import 'package:artistic_app/screen/profile_screen.dart';
import 'package:artistic_app/screen/search_screen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class EntryPoint extends StatefulWidget {
  const EntryPoint({super.key});

  @override
  State<EntryPoint> createState() => _EntryPointState();
}

class _EntryPointState extends State<EntryPoint> {
  int index = 0;
  bool isHome = true;
  List<BottomNavModel> bottomNavItemList = [
    BottomNavModel(icon: FontAwesomeIcons.home, text: "Home"),
    BottomNavModel(icon: FontAwesomeIcons.magnifyingGlass, text: "search"),
    BottomNavModel(icon: FontAwesomeIcons.heart, text: "like"),
    BottomNavModel(icon: FontAwesomeIcons.user, text: "profile"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          getTabScreen(index: index),
          Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: bottomNav(),
              )),
        ],
      ),
    );
  }

  Widget getTabScreen({required int index}) {
    if (index == 0) {
      return const HomeScreen();
    } else if (index == 1) {
      return const SearchScreen();
    } else if (index == 2) {
      return const LikeScreen();
    } else {
      return const ProfileScreen();
    }
  }

  Widget bottomNav() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(17),
      margin: const EdgeInsets.symmetric(horizontal: 24),
      decoration: const BoxDecoration(
        color: Constant.white,
        borderRadius: BorderRadius.all(Radius.circular(24)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          for (var i = 0; i < bottomNavItemList.length; i++) ...[
            GestureDetector(
              behavior: HitTestBehavior.translucent,
              onTap: () {
                setState(() {
                  index = i;
                });
              },
              child: Icon(
                bottomNavItemList[i].icon,
                color: index == i
                    ? Constant.black
                    : Constant.grey.withOpacity(0.5),
                // size: 15,
              ),
            )
          ]
        ],
      ),
    );
  }
}
