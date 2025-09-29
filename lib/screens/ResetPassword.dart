// import 'package:flutter/material.dart';
// import 'package:hrms/components/appbar.dart';
// import 'package:hrms/consts/colors.dart';
// import 'package:lottie/lottie.dart';

// class ResetPassword extends StatefulWidget {
//   const ResetPassword({super.key});

//   @override
//   State<ResetPassword> createState() => _ResetpasswordState();
// }

// class _ResetpasswordState extends State<ResetPassword> {
//   final TextEditingController _nameController = TextEditingController();
//   @override
//   void initState() {
//     super.initState();
//     _nameController.text = "User name";
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//        appBar: PreferredSize(
//         preferredSize: const Size.fromHeight(60.0),
//         child: customAppbar(),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.only(),
//         child: SingleChildScrollView(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.start,
//             children: [
//               Padding(
//                 padding: const EdgeInsets.only(left: 40),
//                 child: Lottie.asset("assets/images/reset.json",  width: 200, // Adjust the size
//                   height: 250,
//                   ),
//               ),
//               const SizedBox(height: 50,),
//               Padding(
//                 padding: const EdgeInsets.only(left: 40,right: 40),
//                 child: TextField(
//                   controller: _nameController,
//                   decoration: InputDecoration(
//                       prefixIcon:  Icon(
//                         Icons.person,
//                         color: eight,
//                       ),
//                       labelText: "User name",
//                       labelStyle:  TextStyle(color: primary),
//                       border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(30),
//                       )),
//                 ),
//               ),
//               const SizedBox(
//                 height: 25,
//               ),
//               Padding(
//                 padding: const EdgeInsets.only(left: 40,right: 40),
//                 child: TextField(
//                   obscureText: true,
//                   decoration: InputDecoration(
//                       suffixIcon:  Icon(
//                         Icons.visibility,
//                         color: eight,
//                       ),
//                       prefixIcon:  Icon(
//                         Icons.password,
//                         color: eight,
//                       ),
//                       labelText: "Password",
//                       labelStyle:  TextStyle(color: primary),
//                       border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(30),
//                       )),
//                 ),
//               ),
//               const SizedBox(
//                 height: 25,
//               ),
//                Padding(
//                 padding: const EdgeInsets.only(left: 40,right: 40),
//                 child: TextField(
//                   obscureText: true,
//                   decoration: InputDecoration(
//                       suffixIcon:  Icon(
//                         Icons.visibility,
//                         color: eight,
//                       ),
//                       prefixIcon:  Icon(
//                         Icons.password,
//                         color: eight,
//                       ),
//                       labelText: " Confirm Password",
//                       labelStyle:  TextStyle(color: primary),
//                       border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(30),
//                       )),
//                 ),
//               ),const SizedBox(height: 25,),
//               SizedBox(
//                 height: 45,
//                 width: MediaQuery.sizeOf(context).width/1.6,
//                 child: ElevatedButton(
//                   onPressed: () {},
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: seventh,
//                     // textStyle: TextStyle(color: Colors.white)
//                   ),
//                   child:  Text("Save Changes",style: TextStyle(color: fifth,fontSize: 16,fontWeight: FontWeight.bold),),
//                 ),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:quasi_hrms/consts/colors.dart';
import 'package:lottie/lottie.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({super.key});

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          Container(
            height: MediaQuery.sizeOf(context).height,
            width: MediaQuery.sizeOf(context).width,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: <Color>[fouth, Colors.black],
              ),
            ),
          ),
          SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 40),
                    child: Text(
                      "Reset Password",
                      style: TextStyle(
                          color: fifth,
                          fontWeight: FontWeight.bold,
                          fontSize: 25),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: Container(
                      width: MediaQuery.sizeOf(context).width,
                      height: MediaQuery.sizeOf(context).height / 1.2,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(50),
                            topLeft: Radius.circular(50)),
                        color: fifth,
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 25),
                            child: Lottie.asset(
                              "assets/images/reset.json",
                              height: 250,
                              width: 200,
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 30, right: 30),
                            child: TextField(readOnly: true,
                              // controller: _nameController,
                              decoration: InputDecoration(
                                  prefixIcon: Icon(
                                    Icons.person,
                                    color: primary,
                                  ),
                                  hintText: "Deepak namarath",
                                  labelStyle: TextStyle(color: fouth),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30),
                                  )),
                            ),
                          ),
                          const SizedBox(
                            height: 25,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 30, right: 30),
                            child: TextField(
                              obscureText: true,
                              decoration: InputDecoration(
                                  suffixIcon: Icon(
                                    Icons.visibility,
                                    color: primary,
                                  ),
                                  prefixIcon: Icon(
                                    Icons.password,
                                    color: primary,
                                  ),
                                  labelText: "Password",
                                  labelStyle: TextStyle(color: fouth),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30),
                                  )),
                            ),
                          ),
                          const SizedBox(
                            height: 25,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 30, right: 30),
                            child: TextField(
                              obscureText: true,
                              decoration: InputDecoration(
                                  suffixIcon: Icon(
                                    Icons.visibility,
                                    color: primary,
                                  ),
                                  prefixIcon: Icon(
                                    Icons.password,
                                    color: primary,
                                  ),
                                  labelText: " Confirm Password",
                                  labelStyle: TextStyle(color: fouth),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30),
                                  )),
                            ),
                          ),
                          const SizedBox(
                            height: 25,
                          ),
                          SizedBox(
                            height: 45,
                            width: MediaQuery.sizeOf(context).width / 1.3,
                            child: Container(
                              width: MediaQuery.sizeOf(context).width / 1.2,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(33),
                                  gradient: LinearGradient(
                                      colors: [primary, fouth],
                                      begin: Alignment.topCenter,
                                      end: Alignment.centerRight)),
                              child: ElevatedButton(
                                onPressed: () {},
                                style: ButtonStyle(
                                    backgroundColor: WidgetStatePropertyAll(
                                        Colors.transparent),
                                    shadowColor: WidgetStatePropertyAll(
                                        // const Color.fromARGB(255, 180, 209, 233)
                                        Colors.transparent),
                                    fixedSize:
                                        WidgetStatePropertyAll(Size(340, 50))),
                                child: Text(
                                  'Save Changes',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w800,
                                      fontSize: 20),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
