import 'package:flutter/material.dart';
import 'package:progect_iti/models/task.dart';
import 'package:progect_iti/widgets/task_view.dart';
class TaskList extends StatefulWidget {
  final List<Task>tasks;
  TaskList(this.tasks);
  @override
  _TaskListState createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {

  @override
  Widget build(BuildContext context) {

    return ListView.builder(
      itemCount:widget.tasks.length,
      itemBuilder: (context,index){
        return TaskTile(
            isChecked: widget.tasks[index].isDone,
            taskTitle: widget.tasks[index].name,
            checkboxChange: (newValue){
              setState(() {
                widget.tasks[index].doneChange();
              });
            }



        );

      },);

  }
}