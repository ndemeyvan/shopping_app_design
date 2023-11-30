import 'package:animate_do/animate_do.dart';
import 'package:artistic_app/constant/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_blurhash/flutter_blurhash.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../data/model/classes_model.dart';

class ClassDetailScreen extends StatefulWidget {
  final ClassModel classModel;
  const ClassDetailScreen({super.key, required this.classModel});

  @override
  State<ClassDetailScreen> createState() => _ClassDetailScreenState();
}

class _ClassDetailScreenState extends State<ClassDetailScreen> {
  bool isLiked = false;
  bool isLeftTabSelected = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: widget.classModel.bgColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Column(
            children: [
              SizedBox(
                height: 20.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  BounceInLeft(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      behavior: HitTestBehavior.translucent,
                      child: Container(
                        decoration: const BoxDecoration(
                            color: Constant.black,
                            borderRadius:
                                BorderRadius.all(Radius.circular(50))),
                        child: const Padding(
                          padding: EdgeInsets.all(12.0),
                          child: Icon(
                            Icons.arrow_back,
                            color: Constant.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  BounceInRight(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          isLiked = !isLiked;
                        });
                      },
                      behavior: HitTestBehavior.translucent,
                      child: Container(
                        decoration: const BoxDecoration(
                            color: Constant.black,
                            borderRadius:
                                BorderRadius.all(Radius.circular(50))),
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Icon(
                            CupertinoIcons.heart_fill,
                            color: isLiked ? Constant.red : Constant.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15.h,
              ),
              // container
              Expanded(
                child: BounceInDown(
                  child: Container(
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      color: Constant.white,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(25),
                        topLeft: Radius.circular(25),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          //
                          SizedBox(
                            height: 10.h,
                          ),
                          FadeInDown(
                            child: Row(
                              children: [
                                Expanded(
                                    child: Text(
                                  widget.classModel.title.toUpperCase(),
                                  style: TextStyle(
                                    color: Constant.black,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 60.sp,
                                  ),
                                )),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 8.h,
                          ),
                          FadeIn(
                            child: Container(
                              height: 300.h,
                              decoration: const BoxDecoration(
                                color: Constant.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(50)),
                              ),
                              child: FadeOutLeft(
                                child: Stack(
                                  children: [
                                    const ClipRRect(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(15)),
                                      child: BlurHash(
                                        duration: Duration(seconds: 2),
                                        imageFit: BoxFit.cover,
                                        hash: "LBGkLG00t,GH}^Md-U^jLM0Kw0^Q",
                                        image: Constant.networkImage,
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.center,
                                      child: GestureDetector(
                                        onTap: () {
                                          // Do something
                                        },
                                        behavior: HitTestBehavior.translucent,
                                        child: Container(
                                          decoration: const BoxDecoration(
                                              color: Constant.white,
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(50))),
                                          child: const Padding(
                                            padding: EdgeInsets.all(13.0),
                                            child: Icon(
                                              Icons.play_arrow,
                                              color: Constant.red,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 15.h,
                          ),
                          // Tabs
                          Container(
                            padding: const EdgeInsets.all(3),
                            decoration: const BoxDecoration(
                              color: Constant.black,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30)),
                            ),
                            child: Row(
                              children: [
                                tabItem(
                                    onPress: () {
                                      setState(() {
                                        isLeftTabSelected = true;
                                      });
                                    },
                                    isActive: isLeftTabSelected,
                                    label: "detail"),
                                tabItem(
                                    onPress: () {
                                      setState(() {
                                        isLeftTabSelected = false;
                                      });
                                    },
                                    isActive: !isLeftTabSelected,
                                    label: "requirement")
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          // class detail
                          Expanded(
                            child: Row(
                              children: [
                                //
                                Expanded(
                                  child: BounceInDown(
                                    child: detailCardItem(
                                        title: "language", subTitle: "english"),
                                    duration: const Duration(milliseconds: 400),
                                  ),
                                ),
                                Expanded(
                                    child: BounceInDown(
                                  child: detailCardItem(
                                      title: "duration", subTitle: "2h45min"),
                                  duration: const Duration(milliseconds: 600),
                                )),
                                Expanded(
                                    child: BounceInDown(
                                  child: detailCardItem(
                                      title: "level", subTitle: "medium"),
                                  duration: const Duration(milliseconds: 800),
                                )),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  detailCardItem({required String title, required String subTitle}) {
    return Card(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //
              Text(title.toUpperCase(),
                  style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                      color: Constant.black)),

              Text(subTitle.toUpperCase(),
                  style: TextStyle(
                      fontSize: 30.sp,
                      fontWeight: FontWeight.w600,
                      color: Constant.black)),
            ],
          ),
        ),
      ),
    );
  }

  Widget tabItem(
      {required String label,
      required bool isActive,
      required Function() onPress}) {
    return Expanded(
      child: GestureDetector(
        onTap: onPress,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          padding: const EdgeInsets.symmetric(vertical: 22),
          decoration: BoxDecoration(
            color: isActive ? Constant.white : Constant.transparent,
            borderRadius: const BorderRadius.all(Radius.circular(30)),
          ),
          child: Center(
              child: Text(
            label.toUpperCase(),
            style: TextStyle(
                fontWeight: FontWeight.w600,
                color: isActive ? Constant.black : Constant.white),
          )),
        ),
      ),
    );
  }
}
