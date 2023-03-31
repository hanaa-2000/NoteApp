import 'package:flutter/material.dart';
import 'package:note_app/widgits/custom_button.dart';
import 'package:note_app/widgits/custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0) ,
    child: SingleChildScrollView (
    child:AddNoteForm(),
    ),
    );
  }
}

class AddNoteForm extends StatelessWidget {
  const AddNoteForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        SizedBox(
          height: 32.0,
        ),
        CustomTextField(
          hint: 'Title',

        ),
        SizedBox(
          height: 16.0,
        ),
        CustomTextField(hint: 'Content' , maxLines: 5,),
        SizedBox(
          height: 40.0,
        ),
        CustomButtonSheet(),
        SizedBox(
          height: 16.0,
        ),
      ],
    );
  }
}
