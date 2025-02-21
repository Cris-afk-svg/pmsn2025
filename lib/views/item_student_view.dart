import 'package:flutter/material.dart';

class ItemStudentView extends StatelessWidget {
  const ItemStudentView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      //width: MediaQuery(data: data, child: child),
      decoration: BoxDecoration(
        //color: const Color.fromARGB(255, 66, 93, 181),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: const Color.fromARGB(255, 0, 104, 178),
          width: 1,
        ),
      ),
      child: Column(
        children: [
          const Expanded(
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://www.pngkey.com/png/full/114-1149878_setting-user-avatar-in-specific-size-without-breaking.png'),
              ),
              title: Text(
                'Nombre del alumno',
              ),
              subtitle: Text('No. Control: 21030047'),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * .17,
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 184, 225, 255),
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(8),
                  bottomRight: Radius.circular(8)),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Table(children: [
                    TableRow(
                      children: [
                        Center(child: Text('Semestre')),
                        Center(child: Text('Clave Materia')),
                        Center(child: Text('Grupo')),
                      ],
                    ),
                    TableRow(
                      children: [
                        Center(child: Text('5')),
                        Center(child: Text('DM13')),
                        Center(child: Text('8')),
                      ],
                    ),
                  ]),
                  SizedBox(height: 16),
                  Text(
                    'INGENERIA EN SISTEMAS COMPUTACIONALES',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
