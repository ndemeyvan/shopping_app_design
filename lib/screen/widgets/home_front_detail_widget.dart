import 'package:artistic_app/constant/constant.dart';
import 'package:artistic_app/data/model/classes_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeFrontDetailWidget extends StatelessWidget {
  final ClassModel classModel;
  final Function()? onPress;

  const HomeFrontDetailWidget({super.key, required this.classModel, this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color: classModel.bgColor,
        ),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              // Category list
              Row(
                children: [
                  for (var i = 0; i < classModel.listOfCategory.length; i++) ...[
                    Padding(
                      padding: const EdgeInsets.only(right: 4),
                      child: Container(
                        padding: const EdgeInsets.all(3),
                        constraints: const BoxConstraints(minWidth: 30.0),
                        decoration: const BoxDecoration(
                          color: Constant.black,
                          borderRadius: BorderRadius.all(
                            Radius.circular(
                              10,
                            ),
                          ),
                        ),
                        child: Center(
                          child: Text(
                            classModel.listOfCategory[i],
                            style:
                                TextStyle(color: Constant.white, fontSize: 10.sp),
                          ),
                        ),
                      ),
                    )
                  ]
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              // title
              Row(
                children: [
                  Expanded(
                      child: Text(
                    classModel.title,
                    style: TextStyle(
                      color: Constant.black,
                      fontWeight: FontWeight.w700,
                      fontSize: 35.sp,
                    ),
                  )),
                ],
              ),
              //time
              SizedBox(
                height: 20.h,
              ),
              Text(
                classModel.time,
                style: TextStyle(
                  color: Constant.black,
                  fontWeight: FontWeight.normal,
                  fontSize: 14.sp,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
