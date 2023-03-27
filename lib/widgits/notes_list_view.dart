import 'package:flutter/material.dart';
import 'package:note_app/widgits/note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
        itemBuilder: (context,index){
          return const Padding(
              padding:EdgeInsets.symmetric(vertical: 8.0),
              child:NoteItem(),
          );
        }
        );
  }
}