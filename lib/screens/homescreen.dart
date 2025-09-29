import 'package:flutter/material.dart';
import 'package:quasi_hrms/components/appbar.dart';
import 'package:quasi_hrms/consts/colors.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:intl/intl.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  bool _isVisible = false;

  @override
  void initState() {
    super.initState();
    // Trigger fade-in after a short delay
    Future.delayed(Duration(milliseconds: 500), () {
      setState(() {
        _isVisible = true;
      });
    });

    // Trigger fade-out after the fade-in is complete
    // Future.delayed(Duration(milliseconds: 2000), () {
    //   setState(() {
    //     _isVisible = false;
    //   });
    // });
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    DateTime now = DateTime.now();
    String formattedDate = DateFormat('dd-MM-yyyy').format(now);
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(60.0), child: customAppbar()),
      // extendBodyBehindAppBar: true,
      body:
          // Stack(
          // alignment: Alignment.bottomCenter,
          // children: [
          // Container(
          //   color: fouth,
          // decoration: BoxDecoration(
          //     gradient: LinearGradient(colors: [fouth, primary])),
          // child: Column(
          //   children: [
          //     Text('data'),
          //   ],
          // ),
          // ),
          Container(
        // height: height / 1.35,
        // decoration: BoxDecoration(
        // boxShadow: [BoxShadow(blurRadius: 10, color: primary)],
        // color: Colors.white,
        // borderRadius: BorderRadius.only(
        //     topLeft: Radius.circular(33), topRight: Radius.circular(33))),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(33),
                    ),
                    color: fifth,
                    // gradient: LinearGradient(
                    //   colors: [fouth, primary],
                    //   begin: Alignment.topLeft,
                    //   end: Alignment.bottomRight,
                    // ),
                    // gradient: LinearGradient(
                    //   colors: [
                    //     Colors.grey.shade500,
                    //     const Color.fromARGB(156, 225, 219, 219)
                    //   ],
                    //   begin: Alignment.topLeft,
                    //   end: Alignment.bottomRight,
                    // ),
                  ),
                  width: width,
                  height: 150,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          children: [
                            GradientText(
                              colors: [primary, Colors.black],
                              'Hi Alexander',
                              style: TextStyle(
                                  height: 2,
                                  wordSpacing: 2,
                                  color: fouth,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            ),
                            GradientText(
                              colors: [primary, Colors.black],
                              'Good morning',
                              style: TextStyle(
                                  color: fouth,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Check in :',
                                  style: TextStyle(
                                    color: primary,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text("_ _ : _ _")
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  'Check out :',
                                  style: TextStyle(
                                    color: primary,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text("_ _ : _ _")
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Date:',
                    style: TextStyle(color: fouth),
                  ),
                  Card(
                      elevation: 6,
                      child: Text(
                        formattedDate,
                        style: TextStyle(fontSize: 15, color: primary),
                      )),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AnimatedOpacity(
                    duration: Duration(seconds: 1), // Fade duration
                    opacity: _isVisible ? 1.0 : 0.0,
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            backgroundColor: fouth,
                            radius: 40,
                            child: Icon(
                              Icons.beach_access,
                              color: fifth,
                              size: 40,
                            ),
                          ),
                          Text(
                            'LEAVE',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black26,
                              blurRadius: 10,
                              offset: Offset(4, 4),
                            ),
                          ],
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      width: 120,
                      height: 150,
                    ),
                  ),
                  AnimatedOpacity(
                    duration: Duration(seconds: 1), // Fade duration
                    opacity: _isVisible ? 1.0 : 0.0,
                    child: Container(
                      decoration: BoxDecoration(
                          // boxShadow: [BoxShadow(blurRadius: 10, color: primary)],
                          color: Colors.grey,
                          borderRadius: BorderRadius.all(Radius.circular(23))),
                      width: 120,
                      height: 150,
                    ),
                  ),
                  AnimatedOpacity(
                    duration: Duration(seconds: 2), // Fade duration
                    opacity: _isVisible ? 1.0 : 0.0,
                    child: Container(
                      decoration: BoxDecoration(
                          // boxShadow: [BoxShadow(blurRadius: 10, color: primary)],
                          color: Colors.grey,
                          borderRadius: BorderRadius.all(Radius.circular(23))),
                      width: 120,
                      height: 150,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      //   ],
      // )
      floatingActionButton: FloatingActionButton(
        shape: CircleBorder(),
        onPressed: () {
          // Action for FAB
        },
        backgroundColor: primary,
        child: Icon(
          Icons.description_outlined,
          color: fifth,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        height: 80,
        shape: CircularNotchedRectangle(),
        notchMargin: 10.0,
        child: Container(
          height: 90.0,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.white,
                blurRadius: 10,
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              // IconButton(
              //   icon: Icon(Icons.home, color: fouth),
              //   onPressed: () {
              //     // Action for first icon
              //   },
              // ),
              // SizedBox(width: 10), // Space for the FAB
              IconButton(
                icon: Icon(Icons.menu, color: fouth),
                onPressed: () {
                  // Action for second icon
                },
              ),
              // SizedBox(width: 25), // Space for the FAB
              // IconButton(
              //   icon: Icon(Icons.notifications, color: fouth),
              //   onPressed: () {
              //     // Action for second icon
              //   },
              // ),
              SizedBox(width: 10), // Space for the FAB
              IconButton(
                icon: Icon(Icons.person, color: fouth),
                onPressed: () {
                  // Action for second icon
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
