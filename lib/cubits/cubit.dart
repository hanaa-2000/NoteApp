


import 'package:bloc/bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:note_app/constant/constant.dart';
import 'package:note_app/cubits/state.dart';
import 'package:note_app/models/note_model.dart';

class AddNoteCubit extends Cubit<AddNoteState>{
  AddNoteCubit():super(AddNoteInitial());

  addNote(NoteModel note) async{
    emit(AddNoteLoading());
    try {
      var noteBox = Hive.box<NoteModel>(kNotesBox);
      emit(AddNoteSuccess());
      await noteBox.add(note);

    }
    catch(e){
      emit(AddNoteFailure(e.toString()));
    }
  }



}