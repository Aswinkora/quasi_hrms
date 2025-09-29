import 'package:flutter/material.dart';
import 'package:quasi_hrms/consts/colors.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class customAppbar extends StatefulWidget {
  const customAppbar({super.key});

  @override
  State<customAppbar> createState() => _customAppbarState();
}

class _customAppbarState extends State<customAppbar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
            iconTheme: IconThemeData(color: fifth),

        backgroundColor: const Color.fromARGB(255, 45, 91, 76),
        leading: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: CircleAvatar(
            backgroundColor: Colors.white,
            child: Icon(Icons.person, color: Colors.blueAccent),
          ),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GradientText(
              colors: [fifth, fifth],
              "Welcome",
              style: TextStyle(
                  fontSize: 18, color: primary, fontWeight: FontWeight.bold),
            ),
            GradientText(
              colors: [fifth, fifth],
              "Alexander",
              style: TextStyle(fontSize: 14, color: primary),
            ),
          ],
        ),
        // actions: [
        //   ShaderMask(
        //       shaderCallback: (Rect bounds) {
        //         return LinearGradient(
        //           colors: [Colors.white, Colors.black],
        //           begin: Alignment.topLeft,
        //           end: Alignment.bottomRight,
        //         ).createShader(bounds);
        //       },
        //       blendMode: BlendMode.srcIn,
        //       child: IconButton(
        //         onPressed: () {},
        //         icon: Icon(
        //           shadows: [Shadow(blurRadius: 2, color: fouth)],
        //           Icons.menu_rounded,
        //           color: Colors.white,
        //         ),
        //       )
        //       ),
        // ]
        );
  }
}
