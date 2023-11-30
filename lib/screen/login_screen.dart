import 'package:animate_do/animate_do.dart';
import 'package:artistic_app/constant/constant.dart';
import 'package:artistic_app/routes/route_name.dart';
import 'package:artistic_app/screen/widgets/app_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_blurhash/flutter_blurhash.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<StatefulWidget> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constant.black,
      body: Stack(
        children: [
          FadeIn(
            child: SizedBox(
              height: Constant.getMediaQuery(context).height / 1.2.h,
              child: const BlurHash(
                duration: Duration(seconds: 2),
                imageFit: BoxFit.cover,
                hash: "LBGkLG00t,GH}^Md-U^jLM0Kw0^Q",
                image: Constant.networkImage,
              ),
            ),
          ),
          Column(
            children: [
              SizedBox(height: Constant.getMediaQuery(context).height / 1.5),
              Expanded(
                child: Container(
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(horizontal: 17.0),
                  decoration: const BoxDecoration(
                    color: Constant.blueOcean,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(30),
                      topLeft: Radius.circular(30),
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      FadeInRight(
                        child: Text(
                          "Explore more than 500+ \nmasterclasses and \ngain news skills"
                              .toUpperCase(),
                          style: TextStyle(
                              color: Constant.black,
                              fontSize: 35.sp,
                              fontWeight: FontWeight.normal),
                          textAlign: TextAlign.start,
                        ),
                      ),
                      Column(
                        children: [
                          SizedBox(
                            height: 20.h,
                          ),
                          FadeInLeft(
                            child: AppButtonWidget(
                                text: "g e t   s t a r t e d".toUpperCase(),
                                onPress: () {
                                  Navigator.of(context)
                                      .pushNamed(RouteName.enrtyPoint);
                                },
                                bgColor: Constant.black,
                                textColor: Constant.white),
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          FadeInRight(
                              child: AppButtonWidget(
                                  text: "log in".toUpperCase(),
                                  onPress: () {
                                    // perform action
                                  },
                                  bgColor: Constant.transparent,
                                  textColor: Constant.black)),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
