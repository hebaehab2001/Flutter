import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:progect_iti/models/task.dart';
import 'package:progect_iti/screens/add_task.dart';
import 'package:progect_iti/widgets/tasks_list.dart';

class TaskScreen extends StatefulWidget {
  @override
  _TaskScreenState createState() => _TaskScreenState();
}

class _TaskScreenState extends State<TaskScreen> {
  List<Task>tasks=[
    Task(name:"Shoping"),
    Task(name:"Study"),
    Task(name:"Read"),
  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          showModalBottomSheet(context: context,
              builder: (context)=> SingleChildScrollView(
                  child: Container(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: AddTaskScreen((newTaskTitle){
                          setState(() {

                            tasks.add(Task(name: newTaskTitle));
                            Navigator.pop(context);
                          });
                        }),
                      ),),),);
        },
        backgroundColor: Colors.red,
        child: Icon(Icons.add),
      ),
      backgroundColor: Colors.blue,
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(26),
          child: Column (
            children: [

              Text('${tasks.length} Tasks',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              ),
              SizedBox(height: 15,),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(20),
                    ),

                  ),
                  child: TaskList(tasks),
                ),
              ),
            ],
          ),
        ),
      ),
    );

  }
}
