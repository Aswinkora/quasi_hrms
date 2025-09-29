import 'package:flutter/material.dart';
import 'package:quasi_hrms/consts/colors.dart';
import 'package:quasi_hrms/consts/lists.dart';

class Privilegecategory extends StatefulWidget {
  const Privilegecategory({super.key});

  @override
  State<Privilegecategory> createState() => _PrivilegecategoryState();
}

class _PrivilegecategoryState extends State<Privilegecategory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    padding: const EdgeInsets.only(top: 30),
                    child: Text(
                      "Privilege category",
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
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: ListView.builder(
                          itemCount: userpreviledge.length,
                          itemBuilder: (context, index) {
                            final userprivil = userpreviledge[index];
                            // final categoryName = provider.categoryIdNameMap[
                            //         userprivil.privilegeCategoryId] ??
                            //     "Unknown";

                            return Container(
                              margin: const EdgeInsets.symmetric(
                                  vertical: 8.0, horizontal: 5.0),
                              padding: const EdgeInsets.all(16.0),
                              decoration: BoxDecoration(
                                boxShadow: const [
                                  BoxShadow(
                                    color: Colors.black12,
                                    blurRadius: 6.0,
                                    offset: Offset(0, 4),
                                  ),
                                ],
                                color: Colors.white,
                                border: Border.all(color: Colors.teal.shade100),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
//                                   // Heading Row
//                                   Row(
//                                     children: const [
//                                       Expanded(
//                                         flex: 7,
//                                         child: Text(
//                                           "Name of the privilege",
//                                           style: TextStyle(
//                                             color: Colors.teal,
//                                             fontSize: 12,
//                                             fontWeight: FontWeight.w500,
//                                           ),
//                                         ),
//                                       ),
//                                       Expanded(
//                                         flex: 3,
//                                         child: Text(
//                                           "Datavalue",
//                                           style: TextStyle(
//                                             color: Colors.teal,
//                                             fontSize: 12,
//                                             fontWeight: FontWeight.w500,
//                                           ),
//                                         ),
//                                       ),
//                                     ],
//                                   ),
//                                   const SizedBox(height: 8),

// // Value Row + Remarks
//                                   Column(
//                                     crossAxisAlignment:
//                                         CrossAxisAlignment.start,
//                                     children: [
//                                       Row(
//                                         children: [
//                                           Expanded(
//                                             flex: 7,
//                                             child: Text(
//                                               userprivil['name'],
//                                               style: const TextStyle(
//                                                 fontWeight: FontWeight.bold,
//                                                 fontSize: 13,
//                                               ),
//                                             ),
//                                           ),
//                                           Expanded(
//                                             flex: 3,
//                                             child: Text(
//                                               userprivil['datavalue'],
//                                               style: const TextStyle(
//                                                 fontWeight: FontWeight.bold,
//                                                 fontSize: 13,
//                                               ),
//                                             ),
//                                           ),
//                                         ],
//                                       ),
//                                       const Divider(), // 👈 adds a separating line under row
//                                       Text(
//                                         userprivil['remarks'] ?? "",
//                                         style: const TextStyle(
//                                           fontWeight: FontWeight.w500,
//                                           fontSize: 12,
//                                           color: Colors.grey,
//                                         ),
//                                       ),
//                                     ],
//                                   ),
// Heading Row
                                  Row(
                                    children: const [
                                      Expanded(
                                        flex: 7,
                                        child: Text(
                                          "Name of the privilege",
                                          style: TextStyle(
                                            color: Colors.teal,
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        flex: 2,
                                        child: Text(
                                          "Datavalue",
                                          style: TextStyle(
                                            color: Colors.teal,
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 8),

// Value Row + Remarks
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Expanded(
                                            flex: 12,
                                            child: Text(
                                              userprivil['name'],
                                              style: const TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 13,
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            flex: 2,
                                            child: Text(
                                              userprivil['datavalue'],
                                              style: const TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 13,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      const Divider(), // optional separator
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const Text(
                                            "Remarks: ",
                                            style: TextStyle(
                                              color: Colors.teal,
                                              fontSize: 12,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                          Expanded(
                                            child: Text(
                                              userprivil['remarks'] ?? "",
                                              style: const TextStyle(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 12,
                                                color: Colors.grey,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),

                                  // Row(
                                  //   mainAxisAlignment:
                                  //       MainAxisAlignment.spaceBetween,
                                  //   children: const [
                                  //     // SizedBox(width: 20,),
                                  //     Text(
                                  //       "Name of the privilege",
                                  //       style: TextStyle(
                                  //         color: Colors.teal,
                                  //         fontSize: 12,
                                  //         fontWeight: FontWeight.w500,
                                  //       ),
                                  //     ),
                                  //     SizedBox(width: 110),
                                  //     Expanded(
                                  //       child: Text(
                                  //         "Datavalue",
                                  //         style: TextStyle(
                                  //           color: Colors.teal,
                                  //           fontSize: 12,
                                  //           fontWeight: FontWeight.w500,
                                  //         ),
                                  //       ),
                                  //     ),
                                  //     // SizedBox(width: 20),
                                  //     // Expanded(
                                  //     //   child: Text(
                                  //     //     "Remarks",
                                  //     //     style: TextStyle(
                                  //     //       color: Colors.teal,
                                  //     //       fontSize: 12,
                                  //     //       fontWeight: FontWeight.w500,
                                  //     //     ),
                                  //     //   ),
                                  //     // ),
                                  //   ],
                                  // ),
                                  // const SizedBox(height: 8),

                                  // // Value Row
                                  // Row(
                                  //   mainAxisAlignment:
                                  //       MainAxisAlignment.spaceBetween,
                                  //   children: [
                                  //     // SizedBox(width: 20,),
                                  //     Text(
                                  //       userprivil['name'],
                                  //       style: const TextStyle(
                                  //         fontWeight: FontWeight.bold,
                                  //         fontSize: 8.6,
                                  //       ),
                                  //     ),
                                  //     const SizedBox(width: 110),
                                  //     Expanded(
                                  //       child: Text(
                                  //         userprivil['datavalue'],
                                  //         style: const TextStyle(
                                  //           fontWeight: FontWeight.bold,
                                  //           fontSize: 13,
                                  //         ),
                                  //       ),
                                  //     ),
                                  //     const SizedBox(width: 20),
                                  //     Expanded(
                                  //       child: Text(
                                  //         userprivil['remarks'] ?? "",
                                  //         style: const TextStyle(
                                  //           fontWeight: FontWeight.bold,
                                  //           fontSize: 13,
                                  //         ),
                                  //       ),
                                  //     ),
                                  //   ],
                                  // ),
                                ],
                              ),
                            );
                          },
                        ),
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
