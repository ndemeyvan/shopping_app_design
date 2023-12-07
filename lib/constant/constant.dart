// Images constant

import 'package:flutter/material.dart';

import '../data/product_item_model.dart';

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
  static const criteriaCfBold = "criteria_cf_bold";
  static const criteriaCfRegular400 = "criteria_cf_regular_400";

  //size
  static Size getMediaQuery(BuildContext context) {
    return MediaQuery.of(context).size;
  }

  //Place Holder
  static List<ProductTiemModel> products = [
    ProductTiemModel(
      image: Constant.image1,
      label: 'Men hoodies',
      price: 10000,
      id: 7,
      sizeList: ["XS", 'X', "XL", "XXL", "M"],
      colorsList: [Colors.green, Colors.green, Colors.yellow],
    ),
    ProductTiemModel(
      image: Constant.image2,
      label: 'Women sneakers',
      price: 4500,
      id: 2,
      sizeList: ["XS", 'X', "XL", "XXL", "M"],
      colorsList: [Colors.green, Colors.green, Colors.yellow],
    ),
    ProductTiemModel(
      image: Constant.image4,
      label: 'Kids accessories',
      price: 5000,
      id: 2,
      sizeList: ["XS", 'X', "XL", "XXL", "M"],
      colorsList: [Colors.orange, Colors.greenAccent, Colors.yellowAccent],
    ),
    ProductTiemModel(
      image: Constant.image1,
      label: 'Man Hobbies',
      price: 3000,
      id: 3,
      sizeList: ["XS", 'X', "XL", "XXL", "M"],
      colorsList: [Colors.orange, Colors.greenAccent, Colors.yellowAccent],
    ),
    ProductTiemModel(
      image: Constant.image5,
      label: 'Chambalar',
      price: 1000,
      id: 5,
      sizeList: ["XS", 'X', "XL", "XXL", "M"],
      colorsList: [Colors.orange, Colors.greenAccent, Colors.yellowAccent],
    ),
    ProductTiemModel(
      image: Constant.image2,
      label: 'Chambalar',
      price: 1000,
      id: 6,
      sizeList: ["XS", 'X', "XL", "XXL", "M"],
      colorsList: [Colors.orange, Colors.greenAccent, Colors.yellowAccent],
    ),
    // Add more product items here
    ProductTiemModel(
      image: Constant.image1,
      label: 'Men hoodies',
      price: 10000,
      id: 7,
      sizeList: ["XS", 'X', "XL", "XXL", "M"],
      colorsList: [Colors.green, Colors.green, Colors.yellow],
    ),
    ProductTiemModel(
      image: Constant.image2,
      label: 'Women sneakers',
      price: 4500,
      id: 2,
      sizeList: ["XS", 'X', "XL", "XXL", "M"],
      colorsList: [Colors.green, Colors.green, Colors.yellow],
    ),
    ProductTiemModel(
      image: Constant.image4,
      label: 'Kids accessories',
      price: 5000,
      id: 2,
      sizeList: ["XS", 'X', "XL", "XXL", "M"],
      colorsList: [Colors.orange, Colors.greenAccent, Colors.yellowAccent],
    ),
    ProductTiemModel(
      image: Constant.image1,
      label: 'Man Hobbies',
      price: 3000,
      id: 3,
      sizeList: ["XS", 'X', "XL", "XXL", "M"],
      colorsList: [Colors.orange, Colors.greenAccent, Colors.yellowAccent],
    ),
    ProductTiemModel(
      image: Constant.image5,
      label: 'Chambalar',
      price: 1000,
      id: 5,
      sizeList: ["XS", 'X', "XL", "XXL", "M"],
      colorsList: [Colors.orange, Colors.greenAccent, Colors.yellowAccent],
    ),
    ProductTiemModel(
      image: Constant.image2,
      label: 'Chambalar',
      price: 1000,
      id: 6,
      sizeList: ["XS", 'X', "XL", "XXL", "M"],
      colorsList: [Colors.orange, Colors.greenAccent, Colors.yellowAccent],
    ),
  ];
}
