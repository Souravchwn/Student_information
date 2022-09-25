
import 'dart:js_util';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:student_information/Models/student_model.dart';

class StudentListTile extends StatefulWidget {
  final String? name;
  final int? age;
  final double? height;
  final String? address;
  final VoidCallback? fn;
  final VoidCallback? add;
  const StudentListTile({
    Key? key,
    this.name,
    this.age,
    this.height,
    this.address,
    this.fn, this.add,
  }) : super(key: key);

  @override
  State<StudentListTile> createState() => _StudentListTileState();
}

class _StudentListTileState extends State<StudentListTile> {
  var StudentList = student;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        color: Color.fromARGB(255, 195, 182, 139),
        elevation: 5,
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
          Radius.circular(25),
        )),
        shadowColor: Colors.black12,
        child: Column(
          children: [
            Stack(children: [
              Center(
                  child: Text(
                "Student Information",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              )),
              Positioned(
                  right: 20,
                  child: IconButton(
                    onPressed: widget.fn,
                    icon: Icon(Icons.delete),
                  ))
            ]),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Student name:- ${widget.name}"),
            ),
            ListTile(
              leading: Icon(Icons.calendar_month_rounded),
              title: Text("Student age:- ${widget.age}"),
            ),
            ListTile(
              leading: Icon(Icons.location_on_outlined),
              title: Text("Student address:- ${widget.address}"),
            ),
            Container(
              child: ListTile(
                leading: FaIcon(FontAwesomeIcons.person),
                title: Text("Student height:- ${widget.height}"),
              ),
            ),
            ButtonBar(
              children: [
                ElevatedButton(onPressed: widget.add, child: Text("Add Students"))
              ],
            )
          ],
        ),
      ),
    );
  }
}
