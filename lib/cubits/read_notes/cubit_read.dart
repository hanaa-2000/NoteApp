import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';

import 'package:note_app/constant/constant.dart';
import 'package:note_app/cubits/read_notes/state_read.dart';
import 'package:note_app/models/note_model.dart';

class ReadNotesCubit extends Cubit<ReadNotesState>{
  ReadNotesCubit():super(NotesInitial());


  fetchAllNotes() {
    try {
      var noteBox = Hive.box<NoteModel>(kNotesBox);
      emit(NotesSuccess(
        noteBox.values.toList()
      ));
    }
    catch(e){
      emit(NotesFailure(e.toString()));
    }
  }





}