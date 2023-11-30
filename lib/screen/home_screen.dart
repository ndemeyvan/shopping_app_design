import 'package:animate_do/animate_do.dart';
import 'package:animations/animations.dart';
import 'package:artistic_app/constant/constant.dart';
import 'package:artistic_app/data/model/classes_model.dart';
import 'package:artistic_app/screen/class_detail.dart';
import 'package:artistic_app/screen/widgets/home_class_detail_widget_card.dart';
import 'package:artistic_app/screen/widgets/home_front_detail_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flip_card/flip_card.dart';

import '../routes/route_name.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  GlobalKey<FlipCardState> cardKey = GlobalKey<FlipCardState>();

  List<ClassModel> listOfClass = [
    ClassModel(
        listOfCategory: ["film".toUpperCase(), "music".toUpperCase()],
        time: "2h30 min",
        title: "improve your\ndrawing skill".toUpperCase(),
        bgColor: Constant.purple),
    ClassModel(
        listOfCategory: ["photography".toUpperCase(), "proud".toUpperCase()],
        time: "2h30 min",
        title: "music video \nshooting".toUpperCase(),
        bgColor: Constant.blue),
    ClassModel(
        listOfCategory: ["filming".toUpperCase(), "internal".toUpperCase()],
        time: "3h30 min",
        title: "music video \nshooting".toUpperCase(),
        bgColor: Constant.red),
    ClassModel(
        listOfCategory: ["art".toUpperCase(), "biginner".toUpperCase()],
        time: "1h30 min",
        title: "improve your\nmusic skill".toUpperCase(),
        bgColor: Constant.yellow),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constant.black,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20.h,
                ),
                Row(
                  children: [
                    Expanded(
                        child: Text(
                      "Current classes".toUpperCase(),
                      style: TextStyle(
                        color: Constant.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 30.sp,
                      ),
                    )),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                FlipCard(
                  direction: FlipDirection.HORIZONTAL, // default
                  side: CardSide.FRONT, // The side to initially display.
                  front: const HomeClassDetailWidget(),
                  back: HomeFrontDetailWidget(
                    classModel: ClassModel(
                        listOfCategory: [
                          "art".toUpperCase(),
                          "biginner".toUpperCase()
                        ],
                        time: "1h30 min",
                        title: "improve your\ndrawing skill".toUpperCase(),
                        bgColor: Constant.yellow),
                  ),
                ),
                SizedBox(
                  height: 15.h,
                ),
                Row(
                  children: [
                    Expanded(
                        child: Text(
                      "New classes".toUpperCase(),
                      style: TextStyle(
                        color: Constant.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 30.sp,
                      ),
                    )),
                  ],
                ),
                for (ClassModel classModel in listOfClass) ...[
                  BounceInLeft(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 2.0),
                      child: OpenContainer(
                        transitionType: ContainerTransitionType.fade,
                        transitionDuration: const Duration(milliseconds: 850),
                        openBuilder: (context, _) =>
                            ClassDetailScreen(classModel: classModel),
                        closedColor: Colors.transparent,
                        closedBuilder: (context, _) => Container(
                          alignment: Alignment.center,
                          width: double.infinity,
                          child: HomeFrontDetailWidget(
                            classModel: classModel,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
                SizedBox(
                  height: 70.h,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
