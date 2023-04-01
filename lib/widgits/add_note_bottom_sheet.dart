import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/cubit.dart';
import 'package:note_app/cubits/state.dart';
import 'package:note_app/widgits/add_note_form.dart';


class AddNoteBottomSheet extends StatelessWidget {
AddNoteBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(create:(context) => AddNoteCubit(),
        child:BlocConsumer<AddNoteCubit,AddNoteState>(
        listener: (context,state){
          if(state is AddNoteFailure){
            print("Failed ${state.messageErr}");

          }
          if(state is AddNoteSuccess){
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
