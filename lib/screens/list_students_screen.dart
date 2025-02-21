import 'package:flutter/material.dart';
import 'package:pmsn2025/views/item_student_view.dart';

class ListStudentsScreen extends StatelessWidget {
  const ListStudentsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alumnos',
            style: TextStyle(
              color: const Color.fromARGB(255, 0, 0, 0),
              fontSize: 20.0,
              fontFamily: 'Popins',
              fontWeight: FontWeight.bold,
            )),
      ),
      body: ListView(shrinkWrap: true, children: [
        ListTile(
            title: Text(
              'Alumnos Grupo Base',
              style: TextStyle(fontSize: 20.0),
            ),
            subtitle: Text('Enero - Junio'),
            trailing: Column(
              children: [Text('2024', style: TextStyle(fontSize: 20.0))],
            )),
        ListView(
            shrinkWrap: true,
            padding: EdgeInsets.all(20),
            children: const [
              ItemStudentView(),
              SizedBox(height: 10),
              ItemStudentView(),
            ]),
      ]),
    );
  }
}
