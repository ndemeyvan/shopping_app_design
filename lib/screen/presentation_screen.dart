import 'package:animate_do/animate_do.dart';
import 'package:artistic_app/constant/constant.dart';
import 'package:artistic_app/routes/route_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PresentationScreen extends StatefulWidget {
  const PresentationScreen({super.key});

  @override
  State<StatefulWidget> createState() => _PresentationScreenState();
}

class _PresentationScreenState extends State<PresentationScreen> {
  int fontSize = 50;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          FadeIn(
            child: Container(
              height: Constant.getMediaQuery(context).height,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(Constant.image4),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Container(
            height: Constant.getMediaQuery(context).height,
            color: Colors.black.withOpacity(0.3),
          ),
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 30.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    FadeInLeft(
                      child: Text(
                        "NEW",
                        style: TextStyle(
                          letterSpacing: 5,
                          color: Theme.of(context).colorScheme.onTertiary,
                          fontSize: fontSize.sp,
                        ),
                      ),
                    ),
                    //
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushNamed(RouteName.homeScreen);
                      },
                      child: ColorFiltered(
                        colorFilter: ColorFilter.mode(
                          Theme.of(context).colorScheme.onTertiary,
                          BlendMode.srcIn,
                        ),
                        child: ShakeX(
                          infinite: true,
                          from: 3,
                          child: Image.asset(
                            Constant.rightArrow,
                            height: 60.h,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                //
                FadeInRight(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const SizedBox(),
                      Text(
                        "ARRIVALS",
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.onTertiary,
                          fontSize: fontSize.sp,
                          letterSpacing: 5,
                        ),
                        textAlign: TextAlign.end,
                      ),
                    ],
                  ),
                ),
                //
                FadeInLeft(
                  child: Text(
                    "TODAY",
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.onTertiary,
                      fontSize: fontSize.sp,
                      letterSpacing: 5,
                    ),
                    textAlign: TextAlign.start,
                  ),
                ),
                SizedBox(
                  height: 30.h,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
