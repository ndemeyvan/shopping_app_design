import 'package:artistic_app/constant/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

class AppButtonWidget extends StatelessWidget {
  final String text;
  final Function() onPress;
  final Color bgColor;
  final Color textColor;
  final num fontSize;
  final double padding;
  const AppButtonWidget(
      {super.key,
      required this.text,
      required this.onPress,
      required this.bgColor,
      this.fontSize = 18,
      this.padding = 15,
      required this.textColor});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      splashColor: Constant.yellow,
      overlayColor: MaterialStateProperty.all<Color>(Constant.blueOcean),
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(vertical: padding),
        decoration: BoxDecoration(
            color: bgColor,
            borderRadius: const BorderRadius.all(Radius.circular(10))),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
                color: textColor,
                fontWeight: FontWeight.w600,
                fontSize: fontSize.sp),
          ),
        ),
      ),
    );
  }
}
