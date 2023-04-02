import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/read_notes/cubit_read.dart';
import 'package:note_app/cubits/read_notes/state_read.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/widgits/note_item.dart';

class NotesListView extends StatelessWidget {
 const  NotesListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ReadNotesCubit,ReadNotesState>(
        builder: (context,state){
          List<NoteModel> notes =BlocProvider.of<ReadNotesCubit>(context).notes!;
          return Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0),
        child: ListView.builder(
          itemCount: notes.length,
            padding: EdgeInsets.zero,
            itemBuilder: (context, index) {
              return Padding(
                padding:const EdgeInsets.symmetric(vertical: 4.0),
                child: NoteItem(
                  note: notes[index],
                ),
              );
            }
        ),
      );
        }
        );


}
}
