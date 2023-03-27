

import 'package:flutter/material.dart';
import 'package:note_app/widgits/custom_appbar.dart';
import 'package:note_app/widgits/notes_list_view.dart';

class NoteViewBody extends StatelessWidget {
  const NoteViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
      children: const [
        SizedBox(
          height: 50.0,
        ),
         CustomAppBar(),
       Expanded(
         child: NotesListView(),
       ),
      ],
        ),
    );
  }
}

//////////////////////////////////////////////////      APP_Bar

