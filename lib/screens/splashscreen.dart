import 'package:flutter/material.dart';
import 'package:quasi_hrms/consts/splashcontroller.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  late SplashScreenController _controller;

  @override
  void initState() {
    super.initState();
    _controller = SplashScreenController(context);
    _controller.startSplashTimer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Image.asset(
              // color: Colors.white,
              "assets/images/login11.png",
              cacheHeight: 150,
            ),
          ),
          // Text('Quality Team',
          //     style: GoogleFonts.poppins(
          //         color: primary, fontWeight: FontWeight.bold, fontSize: 20)),
        ],
      ),
    );
  }
}
