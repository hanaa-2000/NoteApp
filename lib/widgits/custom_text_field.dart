import 'package:flutter/material.dart';
import 'package:note_app/constant/constant.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: kPrimaryColors,
     decoration: InputDecoration(
       hintText: 'Title',
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
