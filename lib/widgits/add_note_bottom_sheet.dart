import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/add_notes/cubit.dart';
import 'package:note_app/cubits/add_notes/state.dart';
import 'package:note_app/cubits/read_notes/cubit_read.dart';
import 'package:note_app/widgits/add_note_form.dart';


class AddNoteBottomSheet extends StatelessWidget {
const AddNoteBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(create:(context) => AddNoteCubit(),
        child:BlocConsumer<AddNoteCubit,AddNoteState>(
        listener: (context,state){
          if(state is AddNoteFailure){
            print("Failed ${state.messageErr}");
          }

          if(state is AddNoteSuccess){

            BlocProvider.of<ReadNotesCubit>(context).fetchAllNotes();
            Navigator.pop(context);
          }
        },
      builder:(context,state){
          return  AbsorbPointer(
            absorbing: state is AddNoteLoading?true :false,
              child:Padding(
                padding: EdgeInsets.only(
                    left: 16.0,
                right: 16.0,
                bottom: MediaQuery.of(context).viewInsets.bottom,
                ) ,
              child :const SingleChildScrollView(child:  AddNoteForm()),
              ),
          ) ;
        },
    ),
    );
  }
}
