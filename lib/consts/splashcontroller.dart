import 'dart:async';
import 'package:flutter/material.dart';
import 'package:quasi_hrms/screens/login.dart';

class SplashScreenController {
  final BuildContext context;

  SplashScreenController(this.context);

  void startSplashTimer() {
    // final provider = Provider.of<DmProvider>(context, listen: false);

    Timer(Duration(seconds: 4), () {
      // provider.checkLoginStatus(context);
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>Login()));
    });
  }
}
