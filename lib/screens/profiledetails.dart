import 'package:flutter/material.dart';
import 'package:quasi_hrms/consts/colors.dart';

class Profiledetails extends StatefulWidget {
  const Profiledetails({super.key});

  @override
  State<Profiledetails> createState() => _ProfiledetailsState();
}

class _ProfiledetailsState extends State<Profiledetails> {
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
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: 100,
                width: 400,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                              border: Border.all(color: primary, width: 2),
                              color: secondary,
                              shape: BoxShape.circle),
                          child: CircleAvatar(
                            radius: 35,
                            backgroundImage: AssetImage(
                              "assets/images/deepak.png",
                            ),
                          ),
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
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Text(
                                  'Joining Date :',
                                  style: TextStyle(color: fifth),
                                ),
                                Text(
                                  '14/12/2023',
                                  style: TextStyle(color: fifth),
                                )
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
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
                    height: MediaQuery.sizeOf(context).height / 1.3,
                    width: MediaQuery.sizeOf(context).width,
                    child: ListView(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        'Job info',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16),
                                      ),
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        boxShadow: const [
                                          BoxShadow(
                                            color: Colors.black12,
                                            blurRadius: 8.0,
                                            offset: Offset(0, 4),
                                          ),
                                        ],
                                      ),
                                      child: Card(
                                        color: fifth,
                                        shape: RoundedRectangleBorder(
                                          side: BorderSide(color: fouth),
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(16.0),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              const SizedBox(height: 16),
                                              Row(
                                                children: [
                                                  // Icon(
                                                  //     Icons
                                                  //         .person_outline_outlined,
                                                  //     color: seventh,
                                                  //     size: 20),
                                                  SizedBox(width: 8),
                                                  Text(
                                                    'Human Resource Manager',
                                                    style: TextStyle(
                                                      fontSize: 16,
                                                      color: primary,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              const SizedBox(height: 10),
                                              Row(
                                                children: [
                                                  // Icon(Icons.email,
                                                  //     color: seventh, size: 20),
                                                  SizedBox(width: 8),
                                                  Text(
                                                    'Id :',
                                                    style: TextStyle(
                                                      fontSize: 16,
                                                      color: primary,
                                                    ),
                                                  ),
                                                  Text(
                                                    'TT382',
                                                    style: TextStyle(
                                                      fontSize: 16,
                                                      color: primary,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              const SizedBox(height: 10),
                                              Row(
                                                children: [
                                                  // Icon(Icons.location_on,
                                                  //     color: seventh, size: 20),
                                                  const SizedBox(width: 8),
                                                  Text(
                                                    'department :',
                                                    style: TextStyle(
                                                      fontSize: 16,
                                                      color: primary,
                                                    ),
                                                  ),
                                                  Expanded(
                                                    child: Text(
                                                      'HR ',
                                                      style: TextStyle(
                                                        fontSize: 16,
                                                        color: primary,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              const SizedBox(height: 10),
                                              Row(
                                                children: [
                                                  const SizedBox(width: 8),
                                                  Text(
                                                    'Status :',
                                                    style: TextStyle(
                                                      fontSize: 16,
                                                      color: primary,
                                                    ),
                                                  ),
                                                  Text(
                                                    'Permanent',
                                                    style: TextStyle(
                                                      fontSize: 16,
                                                      color: primary,
                                                    ),
                                                  ),
                                                ],
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        'Contact Details',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16),
                                      ),
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        boxShadow: const [
                                          BoxShadow(
                                            color: Colors.black12,
                                            blurRadius: 8.0,
                                            offset: Offset(0, 4),
                                          ),
                                        ],
                                      ),
                                      child: Card(
                                        color: fifth,
                                        shape: RoundedRectangleBorder(
                                          side: BorderSide(color: fouth),
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(16.0),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              const SizedBox(height: 16),
                                              Row(
                                                children: [
                                                  Icon(Icons.phone,
                                                      color: seventh, size: 20),
                                                  SizedBox(width: 8),
                                                  Text(
                                                    '+91 666 777 888',
                                                    style: TextStyle(
                                                      fontSize: 16,
                                                      color: primary,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              const SizedBox(height: 10),
                                              Row(
                                                children: [
                                                  Icon(Icons.email,
                                                      color: seventh, size: 20),
                                                  SizedBox(width: 8),
                                                  Text(
                                                    'deepak@gmail.com',
                                                    style: TextStyle(
                                                      fontSize: 16,
                                                      color: primary,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              const SizedBox(height: 10),
                                              Row(
                                                children: [
                                                  Icon(Icons.location_on,
                                                      color: seventh, size: 20),
                                                  const SizedBox(width: 8),
                                                  Expanded(
                                                    child: Text(
                                                      '123 Medical Street, Health City, Wellness Country',
                                                      style: TextStyle(
                                                        fontSize: 16,
                                                        color: primary,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        'Professional details',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16),
                                      ),
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        boxShadow: const [
                                          BoxShadow(
                                            color: Colors.black12,
                                            blurRadius: 8.0,
                                            offset: Offset(0, 4),
                                          ),
                                        ],
                                      ),
                                      child: Card(
                                        color: fifth,
                                        shape: RoundedRectangleBorder(
                                          side: BorderSide(color: fouth),
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(16.0),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              const SizedBox(height: 16),
                                              Row(
                                                children: [
                                                  // Icon(Icons.email,
                                                  //     color: seventh, size: 20),
                                                  SizedBox(width: 8),
                                                  Text(
                                                    'HR Certification :',
                                                    style: TextStyle(
                                                      fontSize: 16,
                                                      color: primary,
                                                    ),
                                                  ),
                                                  Text(
                                                    'SHRM-CP',
                                                    style: TextStyle(
                                                      fontSize: 16,
                                                      color: primary,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              const SizedBox(height: 10),
                                              Row(
                                                children: [
                                                  // Icon(Icons.location_on,
                                                  //     color: seventh, size: 20),
                                                  const SizedBox(width: 8),
                                                  Text(
                                                    'Experties :',
                                                    style: TextStyle(
                                                      fontSize: 16,
                                                      color: primary,
                                                    ),
                                                  ),
                                                  Expanded(
                                                    child: Text(
                                                      'Recruitment, Compliance ',
                                                      style: TextStyle(
                                                        fontSize: 16,
                                                        color: primary,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ))
            ])
          ])),
      floatingActionButton: FloatingActionButton.small(
        backgroundColor: fouth,
        splashColor: Colors.blue,
        onPressed: () {},
        child: Icon(
          Icons.edit,
          color: fifth,
        ),
      ),
    );
  }
}
