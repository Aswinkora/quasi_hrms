import 'package:flutter/material.dart';
import 'package:quasi_hrms/consts/colors.dart';
import 'package:quasi_hrms/screens/DashBoardScreen.dart';

class Login extends StatefulWidget {
  const Login({super.key});
  @override
  State<Login> createState() => LoginState();
}

class LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height / 20,
              ),
              SizedBox(
                height: 300,
                width: 300,
                child: Image.asset(
                  'assets/images/quasi2.png',
                ),
              ),
              SizedBox(
                height:30,
              ),
              Text(
                'Welcome,',
                style: TextStyle(
                    fontSize: 27, fontWeight: FontWeight.w900, color: primary),
              ),
              Text(
                'Please sign-in to continue!',
                style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w800,
                    fontSize: 16),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 23,
              ),
              Center(
                child: Container(
                  width: MediaQuery.sizeOf(context).width / 1.2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Padding(
                      //   padding: const EdgeInsets.only(left: 10),
                      //   child: Text(
                      //     'User ID',
                      //     style: TextStyle(fontWeight: FontWeight.bold),
                      //   ),
                      // ),
                      TextFormField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30)),
                            hintText: 'Enter your userId',
                            hintStyle: TextStyle(color: Colors.grey.shade400)),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      // Padding(
                      //   padding: const EdgeInsets.only(left: 10),
                      //   child: Text(
                      //     'Password',
                      //     style: TextStyle(fontWeight: FontWeight.bold),
                      //   ),
                      // ),
                      TextFormField(
                        decoration: InputDecoration(
                            suffixIcon: Icon(
                              Icons.visibility,
                              color: Colors.grey.shade500,
                            ),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30)),
                            hintText: 'Enter your password',
                            hintStyle: TextStyle(color: Colors.grey.shade400)),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          TextButton(
                              onPressed: () {},
                              child: Text(
                                'Forgot password?',
                                style: TextStyle(color: secondary),
                              )),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: MediaQuery.sizeOf(context).width / 1.2,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(33),
                    gradient: LinearGradient(
                        colors: [primary, fouth],
                        begin: Alignment.topCenter,
                        end: Alignment.centerRight)),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DashBoardScreen()));
                  },
                  style: ButtonStyle(
                      backgroundColor:
                          WidgetStatePropertyAll(Colors.transparent),
                      shadowColor: WidgetStatePropertyAll(
                          // const Color.fromARGB(255, 180, 209, 233)
                          Colors.transparent),
                      fixedSize: WidgetStatePropertyAll(Size(340, 50))),
                  child: Text(
                    'Log in',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w800,
                        fontSize: 20),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
