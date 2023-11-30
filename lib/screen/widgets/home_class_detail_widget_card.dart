import 'package:artistic_app/constant/constant.dart';
import 'package:artistic_app/screen/widgets/app_button_widget.dart';
import 'package:artistic_app/screen/widgets/course_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeClassDetailWidget extends StatelessWidget {
  const HomeClassDetailWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: Constant.white,
      ),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                //title
                Expanded(
                    child: Text(
                  "Classes in progress".toUpperCase(),
                  style: TextStyle(
                    color: Constant.black,
                    fontWeight: FontWeight.w700,
                    fontSize: 30.sp,
                  ),
                )),
              ],
            ),
            SizedBox(
              height: 10.h,
            ),
            //cpurse list
            for (var i = 0; i < Constant.classCourses.length; i++) ...[
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 2.0),
                child: CourseItem(index: i, text: Constant.classCourses[i]),
              ),
            ],
            SizedBox(
              height: 10.h,
            ),
            
            AppButtonWidget(
                text: "view all".toUpperCase(),
                onPress: () {},
                padding: 13,
                fontSize: 16,
                bgColor: Constant.black,
                textColor: Constant.white)
          ],
        ),
      ),
    );
    ;
  }
}
