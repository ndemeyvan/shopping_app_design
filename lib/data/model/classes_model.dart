import 'package:flutter/material.dart';

class ClassModel {
  final List<String> listOfCategory;
  final String title;
  final String time;
  final Color bgColor;
  ClassModel({
    required this.listOfCategory,
    required this.time,
    required this.title,
    required this.bgColor,
  });
}
