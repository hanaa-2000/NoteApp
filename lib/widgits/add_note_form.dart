import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:note_app/cubits/add_notes/cubit.dart';
import 'package:note_app/cubits/add_notes/state.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/widgits/colors_list_view.dart';
import 'package:note_app/widgits/custom_button.dart';
import 'package:note_app/widgits/custom_text_field.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({Key? key}) : super(key: key);

  @override
  State<AddNoteForm> createState() => _AddNoteForm();
}

class _AddNoteForm extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subTitle;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          const SizedBox(
            height: 32.0,
          ),
          CustomTextField(
            onSaved: (value) {
              title = value;
            },
            hint: 'Title',
          ),
          const SizedBox(
            height: 16.0,
          ),
          CustomTextField(
            onSaved: (value) {
              subTitle = value;
            },
            hint: 'Content',
            maxLines: 5,
          ),
          const SizedBox(
            height: 32.0,
          ),
          const   ColorListView(),
          const SizedBox(
            height: 32.0,
          ),

         /////////////////////////////////
         BlocBuilder<AddNoteCubit,AddNoteState>(
             builder: (context,state){
               return CustomButtonSheet(
                 isLoading: state is AddNoteLoading ? true :false,
                 onTap: () {


                   if (formKey.currentState!.validate()) {
                     formKey.currentState!.save();
                     var currentDate=DateTime.now();
                     var formattedDate=DateFormat('dd-mm-yyyy').format(currentDate);

                     var noteModel = NoteModel(
                         title: title!,
                         subTitle: subTitle!,
                         date: formattedDate,
                         color: Colors.blue.value);
                     BlocProvider.of<AddNoteCubit>(context).addNote(noteModel);
                   } else {
                     autovalidateMode = AutovalidateMode.always;
                   }
                   setState(() {});
                 },
               );
             },
         ),
           const SizedBox(
            height: 16.0,
          ),
        ],
      ),
    );
  }
}


