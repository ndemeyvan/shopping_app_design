import 'package:animate_do/animate_do.dart';
import 'package:artistic_app/constant/constant.dart';
import 'package:artistic_app/data/model/search_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchCategoryItemWidget extends StatelessWidget {
  final SearchItemModel search;
  final Duration duration;
  final double height;
  final Function()? onPress;
  const SearchCategoryItemWidget({
    super.key,
    required this.search,
    required this.height,
    required this.duration,
    this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return BounceInDown(
      duration: duration,
      child: GestureDetector(
        onTap: onPress,
        child: Column(
          children: [
            SizedBox(height: height),
            Expanded(
                child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(30),
                      topLeft: Radius.circular(30),
                    ),
                    color: search.bgColor,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              search.title.toUpperCase(),
                              style: TextStyle(
                                color: Constant.white,
                                fontSize: 50.sp,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              "${search.numberOfCourses} classes".toUpperCase(),
                              style: TextStyle(
                                color: Constant.white,
                                fontSize: 15.sp,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            )),
          ],
        ),
      ),
    );
  }
}
