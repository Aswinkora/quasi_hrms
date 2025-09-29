// import 'package:flutter/material.dart';
// import 'package:hrms/consts/colors.dart';

// class GrievanceScreen extends StatefulWidget {
//   const GrievanceScreen({super.key});

//   @override
//   State<GrievanceScreen> createState() => _GrievanceScreenState();
// }

// class _GrievanceScreenState extends State<GrievanceScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       extendBodyBehindAppBar: true,
//       body: Stack(
//         children: [
//           // Static gradient container
//           Container(
//             height: MediaQuery.sizeOf(context).height,
//             width: MediaQuery.sizeOf(context).width,
//             decoration: BoxDecoration(
//               gradient: LinearGradient(
//                 begin: Alignment.topLeft,
//                 end: Alignment.bottomRight,
//                 colors: <Color>[fouth, Colors.black],
//               ),
//             ),
//           ),
//           Column(
//             children: [
//               Padding(
//                 padding: const EdgeInsets.only(top: 110),
//                 child: Text(
//                   "Grievance Form",
//                   style: TextStyle(
//                     color: fifth,
//                     fontWeight: FontWeight.bold,
//                     fontSize: 25,
//                   ),
//                 ),
//               ),
//               SizedBox(
//                 height: 50,
//               ),
//               Expanded(
//                 child: Container(
//                   height: MediaQuery.sizeOf(context).height,
//                   width: MediaQuery.sizeOf(context).width,
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.only(
//                       topRight: Radius.circular(50),
//                       topLeft: Radius.circular(50),
//                     ),
//                     color: fifth,
//                   ),
//                   child: Padding(
//                     padding: EdgeInsets.only(
//                         left: 20, top: 20, right: 20, bottom: 20),
//                     child: SingleChildScrollView(
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Text(
//                             "Grievant information",
//                             style: TextStyle(
//                                 fontWeight: FontWeight.bold,
//                                 color: primary,
//                                 fontSize: 16),
//                           ),
//                           SizedBox(
//                             height: 20,
//                           ),
//                           Row(
//                             children: [
//                               Text(
//                                 "Employee name",
//                                 style: TextStyle(
//                                     fontWeight: FontWeight.bold, color: fouth),
//                               ),
//                               SizedBox(
//                                 width: 10,
//                               ),
//                               Expanded(
//                                   child: TextField(
//                                 decoration: InputDecoration(
//                                     border: OutlineInputBorder(
//                                         borderRadius:
//                                             BorderRadius.circular(15))),
//                               )),
//                             ],
//                           ),
//                           SizedBox(
//                             height: 10,
//                           ),
//                           Row(
//                             children: [
//                               Text(
//                                 "Employee id",
//                                 style: TextStyle(
//                                     fontWeight: FontWeight.bold, color: fouth),
//                               ),
//                               SizedBox(
//                                 width: 10,
//                               ),
//                               Expanded(
//                                   child: Padding(
//                                 padding: EdgeInsets.only(
//                                     left:
//                                         MediaQuery.sizeOf(context).width / 14),
//                                 child: TextField(
//                                   decoration: InputDecoration(
//                                       border: OutlineInputBorder(
//                                           borderRadius:
//                                               BorderRadius.circular(15))),
//                                 ),
//                               )),
//                             ],
//                           ),
//                           SizedBox(
//                             height: 10,
//                           ),
//                           Row(
//                             children: [
//                               Text(
//                                 "Job title",
//                                 style: TextStyle(
//                                     fontWeight: FontWeight.bold, color: fouth),
//                               ),
//                               SizedBox(
//                                 width: 10,
//                               ),
//                               Expanded(
//                                   child: Padding(
//                                 padding: EdgeInsets.only(
//                                     left:
//                                         MediaQuery.sizeOf(context).width / 6.8),
//                                 child: TextField(
//                                   decoration: InputDecoration(
//                                       border: OutlineInputBorder(
//                                           borderRadius:
//                                               BorderRadius.circular(15))),
//                                 ),
//                               )),
//                             ],
//                           ),
//                           SizedBox(
//                             height: 10,
//                           ),
//                           Row(
//                             children: [
//                               Text(
//                                 "Department",
//                                 style: TextStyle(
//                                     fontWeight: FontWeight.bold, color: fouth),
//                               ),
//                               SizedBox(
//                                 width: 10,
//                               ),
//                               Expanded(
//                                   child: Padding(
//                                 padding: EdgeInsets.only(
//                                     left:
//                                         MediaQuery.sizeOf(context).width / 13),
//                                 child: TextField(
//                                   decoration: InputDecoration(
//                                       border: OutlineInputBorder(
//                                           borderRadius:
//                                               BorderRadius.circular(15))),
//                                 ),
//                               )),
//                             ],
//                           ),
//                           SizedBox(
//                             height: 10,
//                           ),
//                           Row(
//                             children: [
//                               Text(
//                                 "Supervisor",
//                                 style: TextStyle(
//                                     fontWeight: FontWeight.bold, color: fouth),
//                               ),
//                               SizedBox(
//                                 width: 10,
//                               ),
//                               Expanded(
//                                   child: Padding(
//                                 padding: EdgeInsets.only(
//                                     left: MediaQuery.sizeOf(context).width /
//                                         10.5),
//                                 child: TextField(
//                                   decoration: InputDecoration(
//                                       border: OutlineInputBorder(
//                                           borderRadius:
//                                               BorderRadius.circular(15))),
//                                 ),
//                               )),
//                             ],
//                           ),
//                           SizedBox(
//                             height: 10,
//                           ),
//                           Row(
//                             children: [
//                               Text(
//                                 "Date",
//                                 style: TextStyle(
//                                     fontWeight: FontWeight.bold, color: fouth),
//                               ),
//                               SizedBox(
//                                 width: 10,
//                               ),
//                               Expanded(
//                                   child: Padding(
//                                 padding: EdgeInsets.only(
//                                     left:
//                                         MediaQuery.sizeOf(context).width / 4.7),
//                                 child: TextField(
//                                   decoration: InputDecoration(
//                                       border: OutlineInputBorder(
//                                           borderRadius:
//                                               BorderRadius.circular(15))),
//                                 ),
//                               )),
//                             ],
//                           ),
//                           SizedBox(
//                             height: 20,
//                           ),
//                           Text(
//                             "Grievance details",
//                             style: TextStyle(
//                                 fontWeight: FontWeight.bold,
//                                 color: primary,
//                                 fontSize: 16),
//                           ),
//                           SizedBox(
//                             height: 20,
//                           ),
//                           Row(
//                             children: [
//                               Expanded(
//                                   child: Text(
//                                 "Date,time and location of the incident",
//                                 style: TextStyle(
//                                     fontWeight: FontWeight.bold, color: fouth),
//                               )),
//                               SizedBox(
//                                 width: 10,
//                               ),
//                               Expanded(
//                                   child: TextField(
//                                 decoration: InputDecoration(
//                                     border: OutlineInputBorder(
//                                         borderRadius:
//                                             BorderRadius.circular(15))),
//                               ))
//                             ],
//                           ),
//                           SizedBox(
//                             height: 10,
//                           ),
//                           Row(
//                             children: [
//                               Expanded(
//                                   child: Text(
//                                 "Witnesses(if applicable)",
//                                 style: TextStyle(
//                                     fontWeight: FontWeight.bold, color: fouth),
//                               )),
//                               SizedBox(
//                                 width: 10,
//                               ),
//                               Expanded(
//                                   child: TextField(
//                                 decoration: InputDecoration(
//                                     border: OutlineInputBorder(
//                                         borderRadius:
//                                             BorderRadius.circular(15))),
//                               ))
//                             ],
//                           ),
//                           SizedBox(
//                             height: 10,
//                           ),
//                           Row(
//                             children: [
//                               Expanded(
//                                   child: Text(
//                                 "Description of the incident",
//                                 style: TextStyle(
//                                     fontWeight: FontWeight.bold, color: fouth),
//                               )),
//                               SizedBox(
//                                 width: 10,
//                               ),
//                               Expanded(
//                                   child: TextField(
//                                 decoration: InputDecoration(
//                                     hintText:
//                                         "Describe the incident in detail include the names of individuals involved , if applicable",
//                                     border: OutlineInputBorder(
//                                         borderRadius:
//                                             BorderRadius.circular(15))),
//                               ))
//                             ],
//                           ),
//                           SizedBox(
//                             height: 10,
//                           ),
//                           Row(
//                             children: [
//                               Expanded(
//                                   child: Text(
//                                 "Violation of policies/guidelines",
//                                 style: TextStyle(
//                                     fontWeight: FontWeight.bold, color: fouth),
//                               )),
//                               SizedBox(
//                                 width: 10,
//                               ),
//                               Expanded(
//                                   child: TextField(
//                                 decoration: InputDecoration(
//                                     hintText:
//                                         "List policies and guidelines that you believe have been violated during the incident ",
//                                     border: OutlineInputBorder(
//                                         borderRadius:
//                                             BorderRadius.circular(15))),
//                               ))
//                             ],
//                           ),
//                           SizedBox(
//                             height: 10,
//                           ),
//                           Row(
//                             children: [
//                               Expanded(
//                                   child: Text(
//                                 "Has the grievance been discussed with your direct supervisor?",
//                                 style: TextStyle(
//                                     fontWeight: FontWeight.bold, color: fouth),
//                               )),
//                               SizedBox(
//                                 width: 10,
//                               ),
//                               Container(
//                                 height: 70,
//                                 width: 70,
//                                 decoration: BoxDecoration(
//                                     borderRadius: BorderRadius.circular(15),
//                                     border: Border.all(color: Colors.black)),
//                                     child: Row(mainAxisAlignment: MainAxisAlignment.center,
//                                       children: [
//                                         Container(
//                                           height: 12,
//                                           width: 12,
//                                           decoration: BoxDecoration(
//                                             borderRadius: BorderRadius.circular(2),
//                                             border: Border.all(color: Colors.black)
//                                           ),
//                                         ),
//                                         SizedBox(width: 5,),
//                                         Text("Yes",style: TextStyle(fontWeight: FontWeight.bold),)
//                                       ],
//                                     ),
//                               ),
//                               SizedBox(width: 10,),
//                                 Container(
//                                 height: 70,
//                                 width: 70,
//                                 decoration: BoxDecoration(
//                                     borderRadius: BorderRadius.circular(15),
//                                     border: Border.all(color: Colors.black)),
//                                   child: Row(mainAxisAlignment: MainAxisAlignment.center,
//                                       children: [
//                                         Container(
//                                           height: 12,
//                                           width: 12,
//                                           decoration: BoxDecoration(
//                                             borderRadius: BorderRadius.circular(2),
//                                             border: Border.all(color: Colors.black)
//                                           ),
//                                         ),
//                                         SizedBox(width: 5,),
//                                         Text("No",style: TextStyle(fontWeight: FontWeight.bold),)
//                                       ],
//                                     ),
//                               ),
//                               SizedBox(width: 10,),
//                                 Container(
//                                 height: 70,
//                                 width: 70,
//                                 decoration: BoxDecoration(
//                                     borderRadius: BorderRadius.circular(15),
//                                     border: Border.all(color: Colors.black)),
//                                       child: Row(mainAxisAlignment: MainAxisAlignment.center,
//                                       children: [
//                                         Container(
//                                           height: 12,
//                                           width: 12,
//                                           decoration: BoxDecoration(
//                                             borderRadius: BorderRadius.circular(2),
//                                             border: Border.all(color: Colors.black)
//                                           ),
//                                         ),
//                                         SizedBox(width: 5,),
//                                         Expanded(child: Text("Other, please specify:",style: TextStyle(fontWeight: FontWeight.bold),))
//                                       ],
//                                     ),
//                               ),
//                             ],
//                           ),
//                           SizedBox(
//                             height: 10,
//                           ),
//                           Text(
//                             "Proposed grievance resolution",
//                             style: TextStyle(
//                                 fontWeight: FontWeight.bold, color: fouth),
//                           ),
//                           TextField(
//                             maxLines: 5,
//                             decoration: InputDecoration(
//                                 hintText:
//                                     "how would you like this matter resolved?",
//                                 border: OutlineInputBorder(
//                                   borderRadius: BorderRadius.circular(15),
//                                 )),
//                           ),
//                           SizedBox(
//                             height: 10,
//                           ),
//                           Row(
//                             children: [
//                               Expanded(
//                                 child: Text(
//                                   "employee signature",
//                                   style: TextStyle(
//                                       fontWeight: FontWeight.bold,
//                                       color: fouth),
//                                 ),
//                               ),
//                               SizedBox(
//                                 width: 10,
//                               ),
//                               Expanded(
//                                 child: TextField(
//                                   decoration: InputDecoration(
//                                       border: OutlineInputBorder(
//                                           borderRadius:
//                                               BorderRadius.circular(15))),
//                                 ),
//                               )
//                             ],
//                           ),
//                           SizedBox(
//                             height: 20,
//                           ),
//                           Text(
//                             "Received by",
//                             style: TextStyle(
//                                 fontWeight: FontWeight.bold,
//                                 color: primary,
//                                 fontSize: 16),
//                           ),
//                           SizedBox(
//                             height: 20,
//                           ),
//                           Row(
//                             children: [
//                               Text(
//                                 "Name",
//                                 style: TextStyle(
//                                     fontWeight: FontWeight.bold, color: fouth),
//                               ),
//                               SizedBox(
//                                 width: 10,
//                               ),
//                               Expanded(
//                                 child: Padding(
//                                   padding: EdgeInsets.only(
//                                       left:
//                                           MediaQuery.sizeOf(context).width / 7),
//                                   child: TextField(
//                                     decoration: InputDecoration(
//                                         border: OutlineInputBorder(
//                                             borderRadius:
//                                                 BorderRadius.circular(15))),
//                                   ),
//                                 ),
//                               )
//                             ],
//                           ),
//                           SizedBox(
//                             height: 10,
//                           ),
//                           Row(
//                             children: [
//                               Text(
//                                 "Date",
//                                 style: TextStyle(
//                                     fontWeight: FontWeight.bold, color: fouth),
//                               ),
//                               SizedBox(
//                                 width: 10,
//                               ),
//                               Expanded(
//                                 child: Padding(
//                                   padding: EdgeInsets.only(
//                                       left: MediaQuery.sizeOf(context).width /
//                                           6.2),
//                                   child: TextField(
//                                     decoration: InputDecoration(
//                                         border: OutlineInputBorder(
//                                             borderRadius:
//                                                 BorderRadius.circular(15))),
//                                   ),
//                                 ),
//                               )
//                             ],
//                           ),
//                           SizedBox(
//                             height: 10,
//                           ),
//                           Row(
//                             children: [
//                               Text(
//                                 "Signature",
//                                 style: TextStyle(
//                                     fontWeight: FontWeight.bold, color: fouth),
//                               ),
//                               SizedBox(
//                                 width: 10,
//                               ),
//                               Expanded(
//                                 child: Padding(
//                                   padding: EdgeInsets.only(
//                                       left: MediaQuery.sizeOf(context).width /
//                                           16),
//                                   child: TextField(
//                                     decoration: InputDecoration(
//                                         border: OutlineInputBorder(
//                                             borderRadius:
//                                                 BorderRadius.circular(15))),
//                                   ),
//                                 ),
//                               )
//                             ],
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:quasi_hrms/consts/colors.dart';

class GrievanceScreen extends StatefulWidget {
  const GrievanceScreen({super.key});

  @override
  State<GrievanceScreen> createState() => _GrievanceScreenState();
}

class _GrievanceScreenState extends State<GrievanceScreen> {
  // Widget _buildTextField(String label, {String? hintText}) {
  //   return Column(
  //     crossAxisAlignment: CrossAxisAlignment.start,
  //     children: [
  //       Text(
  //         label,
  //         style: TextStyle(fontWeight: FontWeight.bold, color: primary),
  //       ),
  //       const SizedBox(height: 5),
  //       TextField(
  //         decoration: InputDecoration(
  //           hintText: hintText,
  //           border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
  //         ),
  //       ),
  //       const SizedBox(height: 10),
  //     ],
  //   );
  // }
  Widget _buildTextField(String label, {String? hintText, int? maxLines}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        label,
        style: TextStyle(fontWeight: FontWeight.bold, color: primary),
      ),
      const SizedBox(height: 5),
      TextField(
        maxLines: maxLines,
        decoration: InputDecoration(
          hintText: hintText,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
        ),
      ),
      const SizedBox(height: 10),
    ],
  );
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [fouth, Colors.black],
              ),
            ),
          ),
          Column(
            children: [
              const SizedBox(height: 40),
              Text(
                "Grievance Form",
                style: TextStyle(
                  color: fifth,
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
              const SizedBox(height: 50),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: fifth,
                    borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(50),
                      topLeft: Radius.circular(50),
                    ),
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Center(
                        //     child: Text("Grievant Information",
                        //         style: _sectionTitleStyle())),
                        // SizedBox(
                        //   height: 20,
                        // ),
                        // _buildTextField("Employee Name"),
                        // _buildTextField("Employee ID"),
                        // _buildTextField("Job Title"),
                        // _buildTextField("Department"),
                        // _buildTextField("Supervisor"),
                        // _buildTextField("Date"),
                        // SizedBox(
                        //   height: 20,
                        // ),
                        Center(
                            child: Text("Grievance Details",
                                style: _sectionTitleStyle())),
                        SizedBox(
                          height: 20,
                        ),
                        _buildTextField(
                            "Date,"),
                            _buildTextField("Time"),
                            _buildTextField("Location of the incident"),
                        _buildTextField("Witnesses (if applicable)"),
                        _buildTextField("Description of the Incident",
                            hintText: "Describe the incident in detail...",maxLines: 3),
                        // _buildTextField("Violation of Policies/Guidelines",
                        //     hintText:
                        //         "List policies you believe were violated..."),
                        // _buildTextField(
                        //     "Has the grievance been discussed with your direct supervisor?"),

                        // // Text("Employee Signature", style: _sectionTitleStyle()),
                        // _buildTextField(
                        //   "Proposed grievance resolution",
                        //   hintText: "How would you like this matter resolved?",
                        // ),
                        // _buildTextField("Employee signature"),
                        // SizedBox(
                        //   height: 20,
                        // ),
                        // Center(
                        //     child: Text(
                        //   "Received by",
                        //   style: _sectionTitleStyle(),
                        // )),
                        // SizedBox(
                        //   height: 20,
                        // ),
                        // _buildTextField("Name"),
                        // _buildTextField("Date"),
                        // _buildTextField("Signature"),
                        const SizedBox(height: 20),
                        Center(
                          child:
                              // ElevatedButton(
                              //   onPressed: () {},
                              //   style: ElevatedButton.styleFrom(
                              //     padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                              //     // backgroundColor: Colors.black,

                              //     shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                              //   ),
                              //   child:  Text("Submit", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,color: fifth)),
                              // ),
                              Container(
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
                                'Submit',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w800,
                                    fontSize: 20),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  TextStyle _sectionTitleStyle() {
    return TextStyle(
      fontWeight: FontWeight.bold,
      color: fouth,
      fontSize: 16,
    );
  }
}
