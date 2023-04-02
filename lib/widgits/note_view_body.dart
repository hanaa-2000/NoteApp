import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/read_notes/cubit_read.dart';
import 'package:note_app/widgits/custom_appbar.dart';
import 'package:note_app/widgits/notes_list_view.dart';
class NoteViewBody extends StatefulWidget {
  const NoteViewBody({Key? key}) : super(key: key);

  @override
  State<NoteViewBody> createState() => _NoteViewBody();
}
class _NoteViewBody extends State<NoteViewBody>{

@override
  void initState() {
   BlocProvider.of<ReadNotesCubit>(context).fetchAllNotes();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        children: const [
          SizedBox(
            height: 50.0,
          ),
          CustomAppBar( title: 'Notes', icon: Icons.search),
          Expanded(
            child: NotesListView(),
          ),
        ],
      ),
    );
  }
}

//////////////////////////////////////////////////      APP_Bar
