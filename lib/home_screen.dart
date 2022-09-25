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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home Screen")),
      body: Container(
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
            add: () {
              setState(() {
                
              });
            },
          ),
        ),
      ),
    );
  }
}
