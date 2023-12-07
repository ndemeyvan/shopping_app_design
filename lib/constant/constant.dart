// Images constant

import 'package:flutter/material.dart';

class Constant {
  //Images
  static const networkImage =
      "https://firebasestorage.googleapis.com/v0/b/devtestproject-edc92.appspot.com/o/pexels-khalif-holmes-15072213.jpg?alt=media&token=ce82a654-ccb5-4056-8d54-2e6438cb7c14";
  static const image1 = "assets/images/image_1.jpg";
  static const image2 = "assets/images/image_2.jpg";
  static const image3 = "assets/images/image_3.jpg";
  static const image4 = "assets/images/image_4.jpg";
  static const image5 = "assets/images/image_5.jpg";

  static const menu = "assets/images/menu.png";
  static const marketIcon = "assets/images/market.png";
  static const leftArrow = "assets/images/left-arrow.png";




  static const rightArrow = "assets/images/right-arrow.png";

  // font
  static const nunitoRegular400 = "nunito_regular";
  static const bebasneueRegular400 = "bebasneue_regular_400";

  static const criteriaCfBold = "criteria_cf_bold";
  static const criteriaCfRegular400 = "criteria_cf_regular_400";

  //size
  static Size getMediaQuery(BuildContext context) {
    return MediaQuery.of(context).size;
  }
}
