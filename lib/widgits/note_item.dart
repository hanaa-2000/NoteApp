import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/screens/edit_view.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({Key? key, required this.note}) : super(key: key);
  final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context){
        return const EditNoteView();
        })
        );
      },
        child: Container(
      padding:const EdgeInsets.only(top: 24.0,bottom: 24.0,left: 16.0),
      decoration: BoxDecoration(
        color: Color(note.color),
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            title: Text(
              note.title,
              style:const TextStyle(
                color: Colors.black,
                fontSize: 26.0,
              ),
            ),
            subtitle:Padding(
            padding:const EdgeInsets.only(
              top:16.0,
              bottom: 16.0,
            ),
              child: Text(
             note.subTitle,
              style:TextStyle(
                color: Colors.black.withOpacity(.5),
                fontSize: 18.0
              ),
            ),
            ),
            trailing: IconButton(
              onPressed: (){},
              icon: const Icon(
                Icons.delete,
                color: Colors.black,
                size: 24.0,
              ),
            ),

          ),
          Padding(
            padding:const EdgeInsets.only(right: 16),
            child:Text(
            note.date,
            style: TextStyle(
              color: Colors.black.withOpacity(.4),
              fontSize: 16.0,
            ),
          ),
          ),
        ],
      ),
    ),
    );
  }
}
