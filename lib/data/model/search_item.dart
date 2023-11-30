import 'package:flutter/material.dart';

class SearchItemModel {
  String title;
  int numberOfCourses;
  Color bgColor;
  int id;
  SearchItemModel(
      {required this.numberOfCourses,
      required this.title,
      required this.id,
      required this.bgColor});
}
