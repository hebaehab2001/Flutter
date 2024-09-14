
import 'package:flutter/material.dart';
class NoteTile extends StatelessWidget {
  final String noteTitle;
  NoteTile({
     this.noteTitle});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(noteTitle),


    );

  }
}




