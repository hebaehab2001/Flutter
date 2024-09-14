import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:progect_iti/models/task.dart';
import 'package:progect_iti/screens/add_notes.dart';
import 'package:progect_iti/widgets/note_list.dart';

class Notes extends StatefulWidget {
  @override
  _NotesState createState() => _NotesState();
}

class _NotesState extends State<Notes> {
  List<Note>notes=[
    Note(name:"shpp"),

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
                  child: AddNote((newNoteTitle){
                    setState(() {

                      notes.add(Note(name: newNoteTitle));
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


              SizedBox(height: 15,),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(20),
                    ),

                  ),
                  child: NotesList(notes),
                ),
              ),
            ],
          ),
        ),
      ),
    );

  }
}
