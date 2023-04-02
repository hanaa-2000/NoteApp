import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/read_notes/cubit_read.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/widgits/custom_appbar.dart';
import 'package:note_app/widgits/custom_text_field.dart';

class EditViewNoteBody extends StatefulWidget {
  const EditViewNoteBody({Key? key, required this.note}) : super(key: key);
  final NoteModel note;

  @override
  State<EditViewNoteBody> createState() => _EditViewNoteBody();
}

class _EditViewNoteBody extends State<EditViewNoteBody> {
  String? title, subTitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 24.0,
      ),
      child: Column(children:  [
       const  SizedBox(
          height: 50.0,
        ),
        CustomAppBar(
          onPressed: () {
            widget.note.title=title ?? widget.note.title;
            widget.note.subTitle=subTitle ?? widget.note.subTitle;
            widget.note.save();
            BlocProvider.of<ReadNotesCubit>(context).fetchAllNotes();
            Navigator.pop(context);
          },
          title: 'Edit Note',
          icon: Icons.check,
        ),
        const SizedBox(
          height: 50.0,
        ),
        CustomTextField(
            onChanged: (value) {
              title = value;
            },
            hint:widget.note.title,
        ),
        const  SizedBox(
          height: 16.0,
        ),
        CustomTextField(
          onChanged: (value){
            subTitle=value;
          },
          hint: widget.note.subTitle,
          maxLines: 5,
        ),
      ]),
    );
  }
}
