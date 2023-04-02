import 'package:flutter/material.dart';
import 'package:note_app/constant/constant.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({Key? key, required this.hint, this.maxLines=1, this.onSaved, this.onChanged}) : super(key: key);
final String hint;
final int maxLines;
final void Function (String?)?onSaved;
final void Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged:onChanged ,
      onSaved:onSaved ,
      validator: (value){
        if(value?.isEmpty ?? true){
          return 'Field is required';
        }
        else{
          return null;
        }
      },
      cursorColor: kPrimaryColors,
     maxLines: maxLines,
     decoration: InputDecoration(
       hintText: hint ,
       hintStyle: const TextStyle(
         color: kPrimaryColors,
       ),
       border:buildBorder(),
       enabledBorder: buildBorder(),
       focusedBorder: buildBorder(kPrimaryColors),
     ),
    );
  }

  OutlineInputBorder buildBorder([color]){
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8.0),
      borderSide: BorderSide(
        color: color?? Colors.white,
      ),
    );
  }

}
