import 'package:flutter/material.dart';
import 'package:note_app/widgits/add_note_bottom_sheet.dart';
import 'package:note_app/widgits/note_view_body.dart';

class Home_Page extends StatelessWidget {
  const Home_Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          showModalBottomSheet(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16.0),
              ),
              context: context,
              builder: (context){
            return const AddNoteBottomSheet();
          });
        },
        child: const Icon(
          Icons.add,
        ),
      ),
      body: const NoteViewBody(),
    );
  }
}
