import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:student_information/Models/student_model.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'Widgets/student_tile_widget.dart';

class HomeScreen extends StatefulWidget {
  final List<StudentModel> student;

  const HomeScreen({super.key, required this.student});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _nameController = TextEditingController();
  final _ageController = TextEditingController();
  final _heightController = TextEditingController();
  final _addressController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(title: Text("Home Screen")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: height * 0.8,
            width: width,
            child: ListView.builder(
              itemCount: student.length,
              itemBuilder: (context, index) => StudentListTile(
                name: student[index].name,
                age: student[index].age,
                address: student[index].address,
                height: student[index].height,
                fn: () {
                  setState(() {
                    student.remove(student[index]);
                  });
                },
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton.icon(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                              title: Text("Please enter student informations"),
                              //shape: rounded,
                              content: Container(
                                child: Column(
                                  children: [
                                    TextField(
                                      controller: _nameController,
                                      decoration: const InputDecoration(
                                          hintText: "Enter name",
                                          icon: Icon(Icons.person)),
                                    ),
                                    TextField(
                                      controller: _ageController,
                                      decoration: const InputDecoration(
                                          hintText: "Enter age",
                                          icon: Icon(Icons.calendar_month)),
                                    ),
                                    TextField(
                                      controller: _addressController,
                                      decoration: const InputDecoration(
                                          hintText: "Enter address",
                                          icon:
                                              Icon(Icons.location_on_outlined)),
                                    ),
                                    TextField(
                                      controller: _heightController,
                                      decoration: const InputDecoration(
                                          hintText: "Enter height",
                                          icon: Icon(Icons.height)),
                                    )
                                  ],
                                ),
                              ),
                              actions: [
                                TextButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: Text("Cancel")),
                                TextButton(
                                    onPressed: () {
                                      String name = _nameController.text;
                                      String age = _ageController.text;
                                      String height = _heightController.text;
                                      String address = _addressController.text;
                                      debugPrint("$name $age $height $address");
                                      // if (name.isEmpty &&
                                      //     age.isEmpty &&
                                      //     height.isEmpty &&
                                      //     address.isEmpty) {
                                      //   ScaffoldMessenger.of(context).showSnackBar(
                                      //       SnackBar(
                                      //           content: Text(
                                      //               "Please, enter information")));
                                      // }

                                      setState(() {
                                        student.insert(
                                            5,
                                            StudentModel(
                                                name: "Alex",
                                                address: "Khulna",
                                                age: 8,
                                                height: 100));
                                        student.add(StudentModel(
                                            name: name,
                                            address: address,
                                            age: int.parse(age),
                                            height: double.tryParse(height)));
                                      });
                                      Navigator.pop(context);
                                    },
                                    child: Text("Enter"))
                              ],
                              elevation: 20);
                        });
                  },
                  icon: Icon(Icons.filter_frames_rounded),
                  label: Text(
                    "Filter data",
                    style: TextStyle(fontSize: 20),
                  ),
                  style: ElevatedButton.styleFrom(
                      shadowColor: Colors.black12,
                      elevation: 20,
                      backgroundColor: Colors.redAccent),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton.icon(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                              title: Text("Please enter student informations"),
                              //shape: rounded,
                              content: Container(
                                child: Column(
                                  children: [
                                    TextField(
                                      controller: _nameController,
                                      decoration: const InputDecoration(
                                          hintText: "Enter name",
                                          icon: Icon(Icons.person)),
                                    ),
                                    TextField(
                                      controller: _ageController,
                                      decoration: const InputDecoration(
                                          hintText: "Enter age",
                                          icon: Icon(Icons.calendar_month)),
                                    ),
                                    TextField(
                                      controller: _addressController,
                                      decoration: const InputDecoration(
                                          hintText: "Enter address",
                                          icon:
                                              Icon(Icons.location_on_outlined)),
                                    ),
                                    TextField(
                                      controller: _heightController,
                                      decoration: const InputDecoration(
                                          hintText: "Enter height",
                                          icon: Icon(Icons.height)),
                                    )
                                  ],
                                ),
                              ),
                              actions: [
                                TextButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: Text("Cancel")),
                                TextButton(
                                    onPressed: () {
                                      String name = _nameController.text;
                                      String age = _ageController.text;
                                      String height = _heightController.text;
                                      String address = _addressController.text;
                                      debugPrint("$name $age $height $address");
                                      // if (name.isEmpty &&
                                      //     age.isEmpty &&
                                      //     height.isEmpty &&
                                      //     address.isEmpty) {
                                      //   ScaffoldMessenger.of(context).showSnackBar(
                                      //       SnackBar(
                                      //           content: Text(
                                      //               "Please, enter information")));
                                      // }

                                      setState(() {
                                        student.insert(
                                            5,
                                            StudentModel(
                                                name: "Alex",
                                                address: "Khulna",
                                                age: 8,
                                                height: 100));
                                        student.add(StudentModel(
                                            name: name,
                                            address: address,
                                            age: int.parse(age),
                                            height: double.tryParse(height)));
                                      });
                                      Navigator.pop(context);
                                    },
                                    child: Text("Enter"))
                              ],
                              elevation: 20);
                        });
                  },
                  style: ElevatedButton.styleFrom(
                      shadowColor: Colors.black12,
                      elevation: 20,
                      backgroundColor: Colors.redAccent),
                  label: Text(
                    "Add Students",
                    style: TextStyle(fontSize: 20),
                  ),
                  icon: Icon(Icons.add),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
