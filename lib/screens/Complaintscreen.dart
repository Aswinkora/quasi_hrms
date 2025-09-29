import 'package:flutter/material.dart';
import 'package:quasi_hrms/consts/colors.dart';

class AddComplaintScreen extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController typeController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: fifth,
        title: Text("Add Complaint",style: TextStyle(color: Colors.black,fontSize: 17,fontWeight: FontWeight.bold),),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: typeController,
                decoration: InputDecoration(labelText: "Complaint Type"),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please enter the complaint type";
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: descriptionController,
                decoration: InputDecoration(labelText: "Description"),
                maxLines: 4,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please enter a description";
                  }
                  return null;
                },
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    // Logic to add complaint
                    Navigator.pop(context);
                  }
                },
                child: Text("Submit"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
