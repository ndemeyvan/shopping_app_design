import 'package:artistic_app/constant/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../routes/route_name.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constant.black,
      body: SafeArea(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              CupertinoIcons.profile_circled,
              color: Constant.red,
              size: 30,
            ),
            TextButton(
                onPressed: () {
                  Navigator.pushNamedAndRemoveUntil(
                      context, RouteName.loginScreen, (route) => false);
                },
                child: Text(
                  "logout".toUpperCase(),
                  style: const TextStyle(color: Colors.white),
                ))
          ],
        ),
      )),
    );
  }
}
