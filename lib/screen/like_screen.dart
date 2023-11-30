import 'package:artistic_app/constant/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LikeScreen extends StatefulWidget {
  const LikeScreen({super.key});

  @override
  State<LikeScreen> createState() => _LikeScreenState();
}

class _LikeScreenState extends State<LikeScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Constant.black,
      body: SafeArea(
          child: Center(
        child: Icon(
          CupertinoIcons.heart_fill,
          color: Constant.red,
          size: 30,
        ),
      )),
    );
  }
}
