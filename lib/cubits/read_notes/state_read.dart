import 'package:note_app/models/note_model.dart';

abstract class ReadNotesState{}

class NotesInitial extends ReadNotesState{}


class NotesLoading extends ReadNotesState{}


class NotesSuccess extends ReadNotesState{

final  List<NoteModel>notes;

  NotesSuccess(this.notes);

}
class NotesFailure extends ReadNotesState{

  final String errMessage;

  NotesFailure(this.errMessage);




}