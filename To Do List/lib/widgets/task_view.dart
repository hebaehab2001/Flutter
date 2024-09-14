
import 'package:flutter/material.dart';
class TaskTile extends StatelessWidget {
  final bool isChecked ;
  final String taskTitle;
  final void Function(bool) checkboxChange;
  TaskTile({ this.isChecked,
     this.taskTitle,
     this.checkboxChange});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(taskTitle,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough:null
        ),),
      trailing: Checkbox(
        activeColor: Colors.teal,
        value: isChecked,
        onChanged:checkboxChange,
      ),

    );

  }
}




