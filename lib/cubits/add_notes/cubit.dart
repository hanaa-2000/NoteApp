


import 'package:bloc/bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:note_app/constant/constant.dart';
import 'package:note_app/cubits/add_notes/state.dart';
import 'package:note_app/models/note_model.dart';

class AddNoteCubit extends Cubit<AddNoteState>{
  AddNoteCubit():super(AddNoteInitial());

  addNote(NoteModel note) async{
    emit(AddNoteLoading());
    try {
      var noteBox = Hive.box<NoteModel>(kNotesBox);

      await noteBox.add(note);
      emit(AddNoteSuccess());
    }
    catch(e){
      emit(AddNoteFailure(e.toString()));
    }
  }



}