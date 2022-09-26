import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:student_information/Models/student_model.dart';
import 'package:student_information/Widgets/student_tile_widget.dart';

class PrintStudent extends StatelessWidget {
  const PrintStudent({super.key});

  @override
  Widget build(BuildContext context) {
    var filteredList = student.where((element) => element.age == 8).toList();

    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: ListView.builder(
            itemCount: filteredList.length,
            itemBuilder: (context, index) => StudentListTile(
                  name: filteredList[index].name,
                  age: filteredList[index].age,
                  address: filteredList[index].address,
                  height: filteredList[index].height,
                )),
      ),
    );
  }
}
