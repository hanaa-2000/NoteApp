import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/read_notes/cubit_read.dart';
import 'package:note_app/widgits/add_note_bottom_sheet.dart';
import 'package:note_app/widgits/note_view_body.dart';

class Home_Page extends StatelessWidget {
  const Home_Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create:(context)=>ReadNotesCubit() ,
    child:Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          showModalBottomSheet(
            isScrollControlled: true,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16.0),
              ),
              context: context,
              builder: (context){
            return AddNoteBottomSheet();
          });
        },
        child: const Icon(
          Icons.add,
        ),
      ),
      body: const NoteViewBody(),
    ),
    );
  }
}
