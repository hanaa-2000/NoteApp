import 'package:note_app/models/note_model.dart';

abstract class ReadNotesState{}

class NotesInitial extends ReadNotesState{}

class NotesSuccess extends ReadNotesState{

final  List<NoteModel>notes;

  NotesSuccess(this.notes);

}