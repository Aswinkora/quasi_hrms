import 'package:flutter/material.dart';

List<Map<String, dynamic>> salaryData = [
  {"month": "September", "netSalary": 90000, "date": '1/09/2024 - 30/09/2024'},
  {"month": "October", "netSalary": 8000, "date": '1/10/2024 - 30/10/2024'},
  {"month": "November", "netSalary": 88000, "date": '1/11/2024 - 30/11/2024'},
  {"month": "December", "netSalary": 88000, "date": '1/12/2024 - 30/12/2024'},
];
List<Map<String, dynamic>> docdata = [
  {"name": "Offer Letter", "Icons": Icons.assignment_turned_in},
  {"name": "Appt Letter", "Icons": Icons.mail},
  {"name": "Resume", "Icons": Icons.assignment},
  {"name": "Certificates", "Icons": Icons.card_membership},
  {"name": "ID Card", "Icons": Icons.badge_rounded},
  {"name": "Bank Passbook", "Icons": Icons.menu_book},
  {"name": "Health Chekup", "Icons": Icons.health_and_safety},
  {"name": "Vaccination", "Icons": Icons.vaccines},
];
List<Map<String, String>> leaverequests = [
  {
    "Starting": "22 Aug 2024",
    "ending": "27 Aug 2024",
    "leave type": "Sick leave",
    "Status": "Submitted",
  },
  {
    "Starting": "30 Aug 2024",
    "ending": "5 sep 2024",
    "leave type": "Leave without payment",
    "Status": "Rejected",
  },
  {
    "Starting": "30 sep 2024",
    "ending": "5 oct 2024",
    "leave type": "Vacation",
    "Status": "Approved",
  },
];
List<Map<String, dynamic>> leavedetails = [
  {"leavetype": "Sickleave", "balance": "3", "Totalleave": "8"},
  {"leavetype": "Unpaid", "balance": "3", "Totalleave": "8"},
  {"leavetype": "Casualleave", "balance": "3", "Totalleave": "8"},
   {"leavetype": "Annualleave", "balance": "3", "Totalleave": "8"},
];
  // final List<Map<String, String>> leaveHistory = [
  //   {"type": "Sick Leave", "taken": "2", "available": "3"},
  //   {"type": "Casual Leave", "taken": "4", "available": "2"},
  //   {"type": "Vacation", "taken": "1", "available": "4"},
  //   {"type": "pay leave", "taken": "1", "available": "4"},
  // ];
  final List<Map<String, dynamic>> leaveHistory = [
    {
       'applicationType': 'Half Day Application',
      'type': 'Casual ',
      'from': 'Mon,12 Aug 2025',
      'to': '14 Aug 2025',
      'status': 'Awaiting',
            'steps': ['Create', 'Review', 'Approved'],

      'currentstep':1
    },
    {
       'applicationType': 'Full Day Application',
      'type': 'Sick ',
      'from': 'Tue,5 Aug 2025',
      'to': '6 Aug 2025',
      'status': 'Rejected',
      'steps': ['Create', 'Review', 'Approved'],
      'currentstep':3
    },
    { 'applicationType': 'Full Day Application',
      'type': 'Earned ',
      'from': 'Fri,20 Jul 2025',
      'to': '22 Jul 2025',
      'status': 'Approved',
      'steps': ['Create', 'Review', 'Approved'],
      'currentstep':3
    },
  ];
final List<String> monthLabels = [
  "Jan",
  "Feb",
  "Mar",
  "Apr",
  "May",
  "Jun",
  "Jul",
  "Aug",
  "Sep",
  "Oct",
  "Nov",
  "Dec"
];
final List<Map<String, double>> monthlyLeaveData = [
  {"Sick": 2, "Casual": 1, "Vacation": 3, "Pay": 1}, // Jan
  {"Sick": 1, "Casual": 2, "Vacation": 2, "Pay": 0}, // Feb
  {"Sick": 3, "Casual": 1, "Vacation": 4, "Pay": 2}, // Mar
  {"Sick": 1, "Casual": 2, "Vacation": 3, "Pay": 1}, // Apr
  {"Sick": 2, "Casual": 1, "Vacation": 2, "Pay": 3}, // May
  {"Sick": 0, "Casual": 2, "Vacation": 3, "Pay": 1}, // Jun
  {"Sick": 1, "Casual": 1, "Vacation": 2, "Pay": 0}, // Jul
  {"Sick": 3, "Casual": 2, "Vacation": 1, "Pay": 2}, // Aug
  {"Sick": 1, "Casual": 0, "Vacation": 2, "Pay": 1}, // Sep
  {"Sick": 2, "Casual": 1, "Vacation": 3, "Pay": 2}, // Oct
  {"Sick": 1, "Casual": 2, "Vacation": 1, "Pay": 3}, // Nov
  {"Sick": 2, "Casual": 3, "Vacation": 2, "Pay": 1}, // Dec
];

List<Map<String, dynamic>> Settings = [
  {"name": "Profile", "icon": "assets/images/profile.png"},
  {"name": "Documents", "icon": "assets/images/documents.png"},
  {"name": "ID/Specifications", "icon": "assets/images/id.png"},
  {"name": "Grievance", "icon": "assets/images/grievance.png"},
  {"name": "Payslip", "icon": "assets/images/payslip.png"},
  {"name": "Competency and Privilege", "icon": "assets/images/privilege.png"},
  {"name": "Appraisals", "icon": "assets/images/appraisal.png"},
  {"name": "Travel Expense", "icon": "assets/images/travel expense.png"},
  {"name": "Reset password", "icon": "assets/images/reset-password.png"}
];

List<Map<String, dynamic>> userpreviledge = [
  {'name': "Standard precautions", 'datavalue': "S", 'Remarks': ''},
  {
    'name': "Barrier and reverse barrier nursing",
    'datavalue': "U",
    'Remarks': ''
  },
  {'name': "Performing BLS/ACLS", 'datavalue': "U", 'Remarks': ''},
  {'name': "Safe handling of defibrillator", 'datavalue': "U", 'Remarks': ''},
  {'name': "Handing and taking over ", 'datavalue': "U", 'Remarks': ''},
  {'name': "Initial Assessment,Reassessment and preparing care plan", 'datavalue': "U", 'Remarks': ''},
  {'name': "Patient Communication and management", 'datavalue': "U", 'Remarks': ''}
];