// Images constant

import 'package:flutter/material.dart';

class Constant {
  //Image Constant
  static const loginImageJpg = "assets/images/artist_login_page.jpg";
  static const networkImage =
      "https://firebasestorage.googleapis.com/v0/b/devtestproject-edc92.appspot.com/o/pexels-photo-3756766.jpeg?alt=media&token=988fce2c-c1a9-4d2c-be90-1c7f72242032";

  // Colors
  static const Color blueOcean = Color(0xFFAAD5FF);
  static const Color yellow = Colors.yellowAccent;
  static const Color purple = Colors.purple;
  static const Color red = Color(0xFFEB5851);
  static const Color blue = Color(0xFF694CF1);
  static const Color white = Color(0xFFFFFFFF);
  static const Color black = Color(0xFF000000);
  static const Color transparent = Colors.transparent;
  static const Color grey = Colors.grey;

  // font
  static const bebasNeueRegular = "bebasneue_regular";
  static const nunitoRegular400 = "nunito_regular";

  //size
  static Size getMediaQuery(BuildContext context) {
    return MediaQuery.of(context).size;
  }

  // variable
  static List<String> classCourses = [
    "Photograpy for Brands",
    "Music video shooting",
    "Street photograpy"
  ];
}
