abstract class AddNoteState{}



class AddNoteInitial extends AddNoteState{}

class AddNoteLoading extends AddNoteState{}
class AddNoteSuccess extends AddNoteState{}
class AddNoteFailure extends AddNoteState{
 final String messageErr;

 AddNoteFailure(this.messageErr);

}