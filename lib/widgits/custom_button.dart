import 'package:flutter/material.dart';
import 'package:note_app/constant/constant.dart';

class CustomButtonSheet extends StatelessWidget {
  const CustomButtonSheet({Key? key, required this.onTap}) : super(key: key);
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
       child:Container(
      width: MediaQuery.of(context).size.width,
      height: 55,
        decoration: BoxDecoration(
          color: kPrimaryColors,
          borderRadius: BorderRadius.circular(8.0),
        ),
      child: const Center(
        child: Text(
          'Save',
          style: TextStyle(
           color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    ),
    );
  }
}
