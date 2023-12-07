import 'package:flutter/material.dart';

class ProductTiemModel {
  String image;
  String label;
  double price;
  int id;
  List<String> sizeList;
  List<Color> colorsList;

  ProductTiemModel({
    required this.image,
    required this.colorsList,
    required this.sizeList,
    required this.price,
    required this.label,
    required this.id,
  });
}
