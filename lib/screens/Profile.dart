import 'package:flutter/material.dart';
import 'package:quasi_hrms/components/appbar.dart';
import 'package:quasi_hrms/consts/colors.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
         appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60.0),
        child: customAppbar(),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Doctor's Header Section
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
              child: Card(color:fifth,
                shape: RoundedRectangleBorder(side: BorderSide(color: fouth,),
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(16.0),
                        child: Image.asset(
                          'assets/images/doctor.png', // Replace with the actual image path
                          width: 140,
                          height: 160,
                          // fit: BoxFit.fill,
                        ),
                      ),
                      const SizedBox(width: 16),
                       Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Hello, I am',
                              style: TextStyle(
                                color: primary,
                                fontSize: 18,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                            Text(
                              'Dr. Alexander',
                              style: TextStyle(
                                color: fouth,
                                fontSize: 28,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'MBBS, MS - General Surgery, General Physician',
                              style: TextStyle(
                                color: primary,
                                fontSize: 16,
                              ),
                            ),
                            SizedBox(height: 10),
                           
                            SizedBox(height: 10),
                            Text(
                              '10 Years Experience Overall',
                              style: TextStyle(
                                color: primary,
                                fontSize: 14,
                              ),
                            ),
                            SizedBox(height: 8),
                           
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            
            const SizedBox(height: 16),

            // Contact Details Section
            Container(
              decoration: BoxDecoration(boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 8.0,
            offset: Offset(0, 4),
          ),
        ],),
              child: Card(color:fifth,
                shape: RoundedRectangleBorder(
                  side: BorderSide(color: fouth),
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Contact Details',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF0049af),
                        ),
                      ),
                      const SizedBox(height: 16),
                      Row(
                        children:  [
                          Icon(Icons.phone, color: seventh, size: 20),
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
                        children:  [
                          Icon(Icons.email, color: seventh, size: 20),
                          SizedBox(width: 8),
                          Text(
                            'Alexander@gmail.com',
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
                           Icon(Icons.location_on, color:seventh , size: 20),
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
            
            const SizedBox(height: 16),

            // About Section
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
              child: Card(color:fifth,
                shape: RoundedRectangleBorder(
                  side: BorderSide(color: fouth),
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'About',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF0049af),
                        ),
                      ),
                      const SizedBox(height: 12),
                       Text(
                        'Dr. Alexander is an eminent Endocrinologist associated with Med Hospitals. '
                        'he is specially trained to diagnose diseases related to glands. ',
                        
                        style: TextStyle(fontSize: 16, height: 1.5,color: primary),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            
            const SizedBox(height: 16),

            // Specialization Section
            Container(
              decoration: BoxDecoration(boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 8.0,
            offset: Offset(0, 4),
          ),
        ],),
              child: Card(color:fifth,
                shape: RoundedRectangleBorder(
                  side: BorderSide(color: fouth),
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Specialized in',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF0049af),
                        ),
                      ),
                      SizedBox(height: 12),
                      Wrap(
                        spacing: 8.0,
                        runSpacing: 4.0,
                        children: [
                          Chip(label: Text('Diabetes',style: TextStyle(color: Colors.white),),backgroundColor: eight,),
                          Chip(label: Text('Thyroid',style: TextStyle(color: Colors.white)),backgroundColor: eight),
                          Chip(label: Text('Osteoporosis',style: TextStyle(color: Colors.white)),backgroundColor: eight),
                          Chip(label: Text('Surgeon',style: TextStyle(color: Colors.white)),backgroundColor: eight),
                          Chip(label: Text('General',style: TextStyle(color: Colors.white)),backgroundColor: eight),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            
            const SizedBox(height: 16),

          
          ],
        ),
      ),
    );
  }
}

