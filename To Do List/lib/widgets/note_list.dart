import 'package:flutter/material.dart';
import 'package:progect_iti/models/task.dart';
import 'package:progect_iti/widgets/nots_view.dart';
class NotesList extends StatefulWidget {
  final List<Note>notes;
  NotesList(this.notes);
  @override
  _NotesListState createState() => _NotesListState();
}

class _NotesListState extends State<NotesList> {

  @override
  Widget build(BuildContext context) {

    return ListView.builder(
      itemCount:widget.notes.length,
      itemBuilder: (context,index){
        return NoteTile(
          noteTitle: widget.notes[index].name,

        );

      },);

  }
}





