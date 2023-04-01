import 'package:flutter/material.dart';
import 'package:note_app/constant/constant.dart';

class CustomButtonSheet extends StatelessWidget {
  const CustomButtonSheet({Key? key, required this.onTap, this.isLoading=false}) : super(key: key);
  final void Function()? onTap;
  final bool isLoading;
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
      child:  Center(
        child: isLoading ? const SizedBox(
        height: 24.0,
            width: 24.0,
            child: CircularProgressIndicator(color: Colors.black,)
        ) :
        const Text(
          'Add',
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
