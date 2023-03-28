import 'package:flutter/material.dart';
import 'package:note_app/widgits/edit_view_note_body.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: EditViewNoteBody(),
    );
}
}
