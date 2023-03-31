import 'package:flutter/material.dart';
import 'package:note_app/widgits/custom_button.dart';
import 'package:note_app/widgits/custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0) ,
    child: SingleChildScrollView (
    child:AddNoteForm(),
    ),
    );
  }
}
class AddNoteForm extends StatefulWidget{
  const AddNoteForm({Key? key}) : super(key: key);
  @override
  State<AddNoteForm> createState() => _AddNoteForm();
}

class _AddNoteForm extends State<AddNoteForm> {

 final GlobalKey<FormState>formKey=GlobalKey();
 AutovalidateMode autovalidateMode =AutovalidateMode.disabled;
 String ? title ,subTitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
        autovalidateMode: autovalidateMode,
        child:Column(
      children:  [
        const SizedBox(
          height: 32.0,
        ),
        CustomTextField(
          onSaved: (value){
            title =value;
          },
          hint: 'Title',

        ),
       const  SizedBox(
          height: 16.0,
        ),
        CustomTextField(
          onSaved: (value){
            subTitle=value;
          },
          hint: 'Content' ,
          maxLines: 5,),
      const   SizedBox(
          height: 40.0,
        ),
        CustomButtonSheet(
          onTap: (){
            if(formKey.currentState!.validate()){
              formKey.currentState!.save();
            }else{
              autovalidateMode=AutovalidateMode.always;
            }
            setState(() {

            });
          },
        ),
      const   SizedBox(
          height: 16.0,
        ),
      ],
    ),
    );
  }


}


