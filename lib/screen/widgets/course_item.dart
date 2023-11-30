import 'package:artistic_app/constant/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CourseItem extends StatelessWidget {
  final int index;
  final String text;
  const CourseItem({super.key,required this.index,required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 3.w,
        ),
        Container(
          padding: const EdgeInsets.all(10),
          width: 28,
          height: 28,
          decoration: const BoxDecoration(
              color: Constant.black,
              borderRadius: BorderRadius.all(Radius.circular(50))),
          child: Center(
            child: Text(
              "${index + 1}",
              style: TextStyle(color: Constant.white, fontSize: 8.sp),
            ),
          ),
        ),
        SizedBox(
          width: 5.w,
        ),
        Text(
          text,
          style: const TextStyle(
            color: Constant.black,
            fontWeight: FontWeight.bold,
            fontFamily: Constant.nunitoRegular400,
          ),
        ),
        SizedBox(
          width: 7.w,
        ),
        const Icon(
          FontAwesomeIcons.arrowRight,
          color: Colors.black,
          size: 15,
        )
      ],
    );
    ;
  }
}
