// import 'dart:io';

// import 'package:flutter/material.dart';
// import 'package:hrms/components/appbar.dart';
// import 'package:hrms/consts/colors.dart';
// import 'package:hrms/screens/DashBoardScreen.dart';
// import 'package:intl/intl.dart';
// import 'package:image_picker/image_picker.dart';
// import 'package:permission_handler/permission_handler.dart';

// class IncidentScreen extends StatefulWidget {
//   const IncidentScreen({super.key});

//   @override
//   State<IncidentScreen> createState() => _IncidentState();
// }

// class _IncidentState extends State<IncidentScreen> {
//   TextEditingController _dateController = TextEditingController();
//   TextEditingController _timeController = TextEditingController();
//   final List<String> type = [];
//   XFile? file;
//   final picker = ImagePicker();

//   Future<void> _pickImageFromCamera() async {
//     if (await Permission.camera.request().isGranted) {
//       final XFile? image = await picker.pickImage(source: ImageSource.camera);
//       if (image != null) {
//         setState(() {
//           file = image;
//         });
//       }
//     }
//   }

//   void onchange(String? newlocation) {
//     setState(() {});
//   }

//   Future<void> _selecttime() async {
//     TimeOfDay? pickedTime = await showTimePicker(
//       context: context,
//       initialTime: TimeOfDay.now(),
//     );

//     if (pickedTime != null) {
//       final now = DateTime.now();
//       final time = DateTime(
//           now.year, now.month, now.day, pickedTime.hour, pickedTime.minute);
//       String formattedTime = DateFormat('HH:mm').format(time);
//       setState(() {
//         _timeController.text = formattedTime;
//       });
//     }
//   }

//   Future<void> _selectDate(BuildContext context) async {
//     DateTime? pickedDate = await showDatePicker(
//       context: context,
//       initialDate: DateTime.now(),
//       firstDate: DateTime(2000),
//       lastDate: DateTime(2101),
//     );

//     if (pickedDate != null) {
//       String formattedDate = DateFormat('yyyy-MM-dd').format(pickedDate);
//       setState(() {
//         _dateController.text = formattedDate;
//       });
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: PreferredSize(
//         preferredSize: const Size.fromHeight(60.0),
//         child: customAppbar(),
//       ),
//       body: SingleChildScrollView(
//         child: Center(
//           child: Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 30),
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 Row(
//                   children: [
//                     Text(
//                       'Location : ',
//                       style: TextStyle(
//                           color: primary,
//                           fontSize: 15,
//                           fontWeight: FontWeight.w900),
//                     ),
//                     Expanded(
//                         child: TextFormField(
//                       decoration: InputDecoration(
//                           prefixIconColor: eight,
//                           prefixIcon:  Icon(Icons.location_on_outlined,),
//                           hintText: 'Location',
//                           hintStyle: TextStyle(color: third),
//                           labelText: 'Location',
//                           labelStyle: TextStyle(color: primary),
//                           border: OutlineInputBorder(
//                               borderRadius: BorderRadius.circular(30))),
//                     ))
//                   ],
//                 ),
//                 const SizedBox(
//                   height: 30,
//                 ),
//                 Row(
//                   children: [
//                     Text('Date :  ',
//                         style: TextStyle(
//                             color: primary,
//                             fontSize: 15,
//                             fontWeight: FontWeight.w900)),
//                     const SizedBox(
//                       width: 20,
//                     ),
//                     Expanded(
//                       child: TextFormField(
//                         controller: _dateController,
//                         decoration: InputDecoration(
//                             labelText: 'Select Date',
//                            labelStyle: TextStyle(color: primary),

//                             prefixIcon:  Icon(Icons.calendar_today,),
//                             prefixIconColor: eight,
//                             border: OutlineInputBorder(
//                                 borderRadius: BorderRadius.circular(30))),
//                         readOnly: true,
//                         onTap: () => _selectDate(context),
//                       ),
//                     ),
//                   ],
//                 ),
//                 const SizedBox(
//                   height: 30,
//                 ),
//                 Row(
//                   children: [
//                     Text('Time : ',
//                         style: TextStyle(
//                             color: primary,
//                             fontSize: 15,
//                             fontWeight: FontWeight.w900)),
//                     const SizedBox(
//                       width: 20,
//                     ),
//                     Expanded(
//                       child: TextFormField(
//                         controller: _timeController,
//                         decoration: InputDecoration(
//                             labelStyle: TextStyle(color: primary),

//                             labelText: 'Select Time',
//                             prefixIcon: const Icon(Icons.access_time),
//                             prefixIconColor: eight,
//                             border: OutlineInputBorder(
//                                 borderRadius: BorderRadius.circular(30))),
//                         readOnly: true,
//                         onTap: () => _selecttime(),
//                       ),
//                     )
//                   ],
//                 ),
//                 const SizedBox(
//                   height: 30,
//                 ),
//                 Row(
//                   children: [
//                     Text('Type :',
//                         style: TextStyle(
//                             color: primary,
//                             fontSize: 15,
//                             fontWeight: FontWeight.w900)),
//                     const SizedBox(
//                       width: 20,
//                     ),
//                     Expanded(
//                         child: DropdownButtonFormField(
//                       decoration: InputDecoration(
//                         hintText: 'Type',
//                         hintStyle: TextStyle(color: primary),
//                         border: OutlineInputBorder(
//                             borderRadius: BorderRadius.circular(30)),
//                       ),
//                       items: type.map((typ) {
//                         return DropdownMenuItem(value: typ, child: Text(typ),);
//                       }).toList(),
//                       onChanged: onchange,
//                     ))
//                   ],
//                 ),
//                 const SizedBox(
//                   height: 30,
//                 ),
//                 Row(
//                   children: [
//                     Text('Incident : ',
//                         style: TextStyle(
//                             color: primary,
//                             fontSize: 15,
//                             fontWeight: FontWeight.w900)),
//                     Expanded(
//                         child: TextFormField(
//                       maxLines: null,
//                       decoration: InputDecoration(
//                         hintText: '  Describe the incident...',
//                         hintStyle: TextStyle(color: third),
//                         border: OutlineInputBorder(
//                             borderRadius: BorderRadius.circular(30)),
//                       ),
//                     ))
//                   ],
//                 ),
//                 const SizedBox(
//                   height: 30,
//                 ),
//                 GestureDetector(
//                   onTap: () {
//                     setState(() {
//                       _pickImageFromCamera();
//                     });
//                   },
//                   child: Container(
//                     width: MediaQuery.of(context).size.width,
//                     height: 200,
//                     decoration: BoxDecoration(border: Border.all(color: primary),
//                         color: fifth, borderRadius: BorderRadius.circular(23)),
//                     child: file == null
//                         ? const Icon(Icons.camera_alt_outlined)
//                         : ClipRRect(
//                             borderRadius: BorderRadius.circular(23),
//                             child: Image.file(
//                               File(file!.path),
//                               fit: BoxFit.cover,
//                             ),
//                           ),
//                   ),
//                 ),
//                 const SizedBox(
//                   height: 20,
//                 ),
//                 // ElevatedButton(
//                 //     style: ButtonStyle(
//                 //         shape: WidgetStatePropertyAll(RoundedRectangleBorder(
//                 //             borderRadius: BorderRadius.circular(14))),
//                 //         iconColor: const WidgetStatePropertyAll(Colors.grey),
//                 //         fixedSize: WidgetStatePropertyAll(
//                 //             Size(MediaQuery.of(context).size.width / 1.3, 40)),
//                 //         backgroundColor: WidgetStatePropertyAll(seventh)),
//                 //     onPressed: () {},
//                 //     child: const Text(
//                 //       'Submit',
//                 //       style: TextStyle(color: Colors.white),
//                 //     ))
//                    Container(
//                 width: MediaQuery.sizeOf(context).width/1.2,
//                 child: ElevatedButton(
//                   onPressed: () {

//                   },
//                   style: ButtonStyle(
//                       backgroundColor: WidgetStatePropertyAll(
//                          seventh),
//                       shadowColor: WidgetStatePropertyAll(
//                           const Color.fromARGB(255, 180, 209, 233)),
//                       fixedSize: WidgetStatePropertyAll(Size(340, 50))),
//                   child: Text(
//                     'Submit',
//                     style: TextStyle(
//                         color: Colors.white, fontWeight: FontWeight.w800),
//                   ),
//                 ),
//               ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:quasi_hrms/consts/colors.dart';
import 'package:quasi_hrms/screens/login.dart';
import 'package:quasi_hrms/screens/privilege_category.dart';
import 'package:image_picker/image_picker.dart';

class IncidentScreen extends StatefulWidget {
  const IncidentScreen({super.key});

  @override
  State<IncidentScreen> createState() => _IncidentScreenState();
}

class _IncidentScreenState extends State<IncidentScreen> {
  final List<String> type = [];
  XFile? file;
  final picker = ImagePicker();

  void onchange(String? newlocation) {
    setState(() {});
  }

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
                    padding: const EdgeInsets.only(top: 20),
                    child: Text(
                      "Priviledge",
                      style: TextStyle(
                          color: fifth,
                          fontWeight: FontWeight.bold,
                          fontSize: 25),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 50),
                    child: Container(
                      height: MediaQuery.sizeOf(context).height / 1.2,
                      width: MediaQuery.sizeOf(context).width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(50),
                            topLeft: Radius.circular(50)),
                        color: fifth,
                      ),
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        children: [
                          Padding(
                            padding:
                                EdgeInsets.only(left: 10, top: 10, right: 10),
                            child: SearchBar(
                              shape: WidgetStatePropertyAll(
                                  RoundedRectangleBorder(
                                      side: BorderSide(color: primary),
                                      borderRadius: BorderRadius.circular(13))),
                              leading: Icon(Icons.search),
                              shadowColor: WidgetStatePropertyAll(Colors.black),
                              backgroundColor: WidgetStatePropertyAll(fifth),
                            ),
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>Privilegecategory()));
                            },
                            child: Container(
                              height: MediaQuery.sizeOf(context).height / 6,
                              width: MediaQuery.sizeOf(context).width / 1.2,
                              decoration: BoxDecoration(
                                // gradient: LinearGradient(
                                //   colors: [
                                //     Color.fromARGB(255, 69, 206, 165),
                                //     Color(0xFF293991),
                                //     // Color.fromARGB(181, 5, 125, 125),
                                //     //                     Color.fromARGB(172, 12, 181, 193),
                            
                                //     // Color.fromARGB(255, 53, 129, 129),
                                //   ],
                                //   end: Alignment.bottomLeft,
                                //   begin: Alignment.topRight,
                                // ),
                                borderRadius: BorderRadius.circular(15),
                                color: fifth,
                                boxShadow: const [
                                  BoxShadow(
                                    color: Colors.black12,
                                    blurRadius: 6.0,
                                    offset: Offset(0, 4),
                                  ),
                                ],
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(12),
                                child: Row(
                                  children: [
                                    CircleAvatar(
                                      radius: 40,
                                      backgroundImage:
                                          AssetImage("assets/images/deepak.png"),
                                    ),
                                    // SizedBox(
                                    //   width: 10,
                                    // ),
                                    Column(
                                      // crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(right: 15),
                                          child: Row(
                                            children: [
                                              Icon(
                                                Icons.person,
                                                color: primary,
                                                size: 18,
                                              ),
                                              SizedBox(
                                                width: 5,
                                              ),
                                              Text(
                                                "Deepak Chandran",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    color: fouth),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(right: 88),
                                          child: Row(
                                            children: [
                                              Icon(
                                                Icons.code,
                                                color: primary,
                                                size: 18,
                                              ),
                                              SizedBox(
                                                width: 5,
                                              ),
                                              Text(
                                                "102942",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    color: fouth),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Row(
                                          children: [
                                            Icon(
                                              Icons.push_pin_outlined,
                                              color: primary,
                                              size: 18,
                                            ),
                                            SizedBox(
                                              width: 5,
                                            ),
                                            Text(
                                              "Basic Nursing Skills",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  color: fouth),
                                            ),
                                          ],
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 10),
                                          child: Row(
                                            children: [
                                              Icon(
                                                Icons.calendar_month_outlined,
                                                color: primary,
                                                size: 18,
                                              ),
                                              SizedBox(
                                                width: 5,
                                              ),
                                              Text(
                                                "2022-09-22 06:45:42",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    color: fouth),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
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
