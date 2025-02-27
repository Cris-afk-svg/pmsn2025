import 'package:flutter/material.dart';
import 'package:pmsn2025/database/task_database.dart';

class TodoScreen extends StatefulWidget {
  const TodoScreen({super.key});

  @override
  State<TodoScreen> createState() => _TodoScreenState();
}

class _TodoScreenState extends State<TodoScreen> {
  TaskDatabase? database;

  @override
  void initState() {
    super.initState();
    database = TaskDatabase();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TODO LIST'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _dialogBuilder(context);
        },
        child: Icon(Icons.add_task),
      ),
      body: FutureBuilder(
          future: database!.SELECT(),
          builder: (context, snapshot) {
            if (snapshot.hasError) {
              return Text(snapshot.error.toString());
            } else if (snapshot.hasData) {
              return ListView.builder(
                  itemCount: snapshot.data!.length,
                  itemBuilder: (context, index) {
                    var obj = snapshot.data![index];
                    return SizedBox(
                      height: 150,
                      child: Column(
                        children: [
                          ListTile(
                            title: Text(
                              obj.title_todo!,
                            ),
                            subtitle: Text(obj.date_todo!),
                            trailing: Builder(builder: (context) {
                              if (obj.status_todo!) {
                                return Icon(Icons.check);
                              } else {
                                return Icon(Icons.close);
                              }
                            }),
                          ),
                          Text(obj.desc_todo!),
                        ],
                      ),
                    );
                  });
            } else {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
          }),
    );
  }

  Future<void> _dialogBuilder(
    BuildContext context,
  ) {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('Add Task'),
          );
        });
  }
}
