// import 'package:flutter/material.dart';
// import 'package:hrms/components/appbar.dart';
// import 'package:hrms/consts/colors.dart';

// class PersonaldetailScreen extends StatefulWidget {
//   const PersonaldetailScreen({super.key});

//   @override
//   State<PersonaldetailScreen> createState() => _PersonaldetailScreenState();
// }

// class _PersonaldetailScreenState extends State<PersonaldetailScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: PreferredSize(
//         preferredSize: const Size.fromHeight(60.0),
//         child: customAppbar(),
//       ),
//       body: SingleChildScrollView(
//         padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             CircleAvatar(
//               radius: 70,
//               backgroundColor: fouth,
//               child: Icon(Icons.person, size: 60, color: Colors.white),
//             ),
//             SizedBox(height: 30),
//             _buildInfoTile(
//               icon: Icons.format_list_bulleted_rounded,
//               title: "Offer Letter",
//             ),
//             _buildInfoTile(
//               icon: Icons.mark_email_read,
//               title: "Appointment Letter",
//             ),
//             _buildInfoTile(
//               icon: Icons.assignment,
//               title: "Resume",
//             ),
//             _buildInfoTile(
//               icon: Icons.density_small_rounded,
//               title: "Certificates",
//             ),
//             _buildInfoTile(
//               icon: Icons.badge,
//               title: "ID Cards",
//             ),
//             _buildInfoTile(
//               icon: Icons.book,
//               title: "Bank Passbook",
//             ),
//             _buildInfoTile(
//               icon: Icons.health_and_safety,
//               title: "Health Checkup",
//             ),
//             _buildInfoTile(
//               icon: Icons.vaccines,
//               title: "Vaccination",
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _buildInfoTile({required IconData icon, required String title}) {
//     return Container(
//       margin: const EdgeInsets.symmetric(vertical: 10),
//       height: 70,
//       decoration: BoxDecoration(
//         border: Border.all(color: primary),
//         borderRadius: BorderRadius.circular(30),
//         color: fifth,
//         gradient: LinearGradient(
//           colors: [Colors.white, fifth!],
//           begin: Alignment.topLeft,
//           end: Alignment.bottomRight,
//         ),
//         boxShadow: [
//           BoxShadow(
//             color: Colors.grey.withOpacity(0.4),
//             blurRadius: 8,
//             offset: Offset(0, 4),
//           ),
//         ],
//       ),
//       child: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 20),
//         child: Row(
//           children: [
//             Icon(icon, color: eight, size: 30),
//             SizedBox(width: 20),
//             Text(
//               title,
//               style: TextStyle(
//                 color: primary,
//                 fontSize: 17,
//                 fontWeight: FontWeight.w500,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:quasi_hrms/consts/colors.dart';
import 'package:quasi_hrms/consts/lists.dart';

class PersonaldetailScreen extends StatefulWidget {
  const PersonaldetailScreen({super.key});

  @override
  State<PersonaldetailScreen> createState() => _PersonaldetailScreenState();
}

class _PersonaldetailScreenState extends State<PersonaldetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            height: MediaQuery.sizeOf(context).height,
            width: MediaQuery.sizeOf(context).width,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: <Color>[fouth, Colors.black],
              ),
            ),
            child: Column(mainAxisAlignment: MainAxisAlignment.end, children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                        border: Border.all(color: primary, width: 2),
                        color: secondary,
                        shape: BoxShape.circle),
                    child: CircleAvatar(
                      radius: 25,
                      backgroundImage: AssetImage(
                        "assets/images/deepak.png",
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: [
                      Text(
                        'Deepak Namarath',
                        style: TextStyle(
                            color: fifth,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  )
                ],
              ),
              Stack(children: [
                Padding(
                  padding: EdgeInsets.only(top: 40),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(50),
                            topLeft: Radius.circular(50)),
                        color: fifth),
                    height: MediaQuery.sizeOf(context).height / 1.25,
                    width: MediaQuery.sizeOf(context).width,
                    child: Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Column(
                        children: [
                          Text(
                            'Documents',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                          ),
                          Expanded(
                            child: GridView.builder(
                              padding: EdgeInsets.all(9),
                              scrollDirection: Axis.vertical,
                              itemCount: docdata.length,
                              itemBuilder: (context, index) {
                                final doc = docdata[index];
                                return Column(
                                  children: [
                                    Container(
                                      width: 150,
                                      height: MediaQuery.sizeOf(context).height/10,
                                      decoration: BoxDecoration(
                                        border: Border.all(color: primary),
                                        // boxShadow: [
                                        //   BoxShadow(
                                        //     color: const Color.fromARGB(
                                        //         255, 66, 62, 62),
                                        //     blurRadius: 2,
                                        //     blurStyle: BlurStyle.normal,
                                        //   ),
                                        // ],
                                        color: fifth,
                                        borderRadius: BorderRadius.circular(30),
                                      ),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          ShaderMask(
                                            shaderCallback: (bounds) =>
                                                LinearGradient(colors: [
                                              Colors.blue,
                                              primary
                                            ]).createShader(bounds),
                                            child: Icon(
                                              doc['Icons'],
                                              color: Colors.white,
                                              size: 40,
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text(
                                              '${doc['name']}',
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  color: Colors.black),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                );
                              },
                              gridDelegate:
                                  // SliverGridDelegateWithMaxCrossAxisExtent(
                                  //     crossAxisSpacing: 10,
                                  //     maxCrossAxisExtent: 170.5)
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 2,
                                      crossAxisSpacing: 15,
                                      mainAxisSpacing: 1,
                                      childAspectRatio: 1,
                                      mainAxisExtent: 140),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ])
            ])));
  }

  // Widget _buildInfoTile({required IconData icon, required String title}) {
  //   return Padding(
  //     padding: const EdgeInsets.all(8.0),
  //     child: Container(
  //       margin: EdgeInsets.symmetric(vertical: 10),
  //       height: 40,
  //       decoration: BoxDecoration(
  //         // border: Border.all(color: primary),
  //         borderRadius: BorderRadius.circular(10),
  //         color: Colors.transparent,

  //         // boxShadow: [
  //         //   BoxShadow(
  //         //     color: Colors.grey.withOpacity(0.4),
  //         //     blurRadius: 8,
  //         //     offset: Offset(0, 4),
  //         //   ),
  //         // ],
  //       ),
  //       child: Padding(
  //         padding: const EdgeInsets.symmetric(horizontal: 20),
  //         child: Row(
  //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //           children: [
  //             Row(
  //               children: [
  //                 Icon(icon, color: primary, size: 30),
  //                 Text(
  //                   title,
  //                   style: TextStyle(
  //                     color: fouth,
  //                     fontSize: 17,
  //                     fontWeight: FontWeight.w500,
  //                   ),
  //                 ),
  //               ],
  //             ),
  //             SizedBox(width: 20),
  //             Icon(
  //               Icons.arrow_forward_ios,
  //               color: Colors.grey.shade600,
  //             )
  //           ],
  //         ),
  //       ),
  //     ),
  //   );
  // }
}
