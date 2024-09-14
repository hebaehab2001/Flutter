import 'package:flutter/material.dart';
import '';

class AddNote extends StatelessWidget {
  final Function addNoteCallback;
  AddNote(this.addNoteCallback);
  @override
  Widget build(BuildContext context) {
    String  newTaskTitle;
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(40),
        child: Column(
          children: [
            Text('Add Note',
              style: TextStyle(
                fontSize: 25,
                color: Colors.blue,
                fontWeight: FontWeight.bold,
              ),),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (newText){
                newTaskTitle=newText;
              },
            ),
            SizedBox(height: 20,),
            TextButton(onPressed: (){
              addNoteCallback(newTaskTitle);

            }, child: Text('ADD'),
              style:TextButton.styleFrom(
                backgroundColor: Colors.red,
                primary: Colors.white,

              ) ,
            ),
          ],
        ),
      ),
    );
  }
}
