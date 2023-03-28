import 'package:flutter/material.dart';
import 'package:note_app/widgits/custom_appbar.dart';
import 'package:note_app/widgits/custom_text_field.dart';

class EditViewNoteBody extends StatelessWidget {
  const EditViewNoteBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 24.0,
      ),
      child: Column(children: const [
        SizedBox(
          height: 50.0,
        ),
        CustomAppBar(
          title: 'Edit Note',
          icon: Icons.check,
        ),
        SizedBox(
          height: 50.0,
        ),
        CustomTextField(hint: 'Title'),
        SizedBox(
          height: 16.0,
        ),
        CustomTextField(
          hint: 'Content',
          maxLines: 5,
        ),
      ]),
    );
  }
}
