
import 'package:flutter/material.dart';
import 'package:note_app/widgits/custom_search_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key, required this.title, required this.icon, this.onPressed}) : super(key: key);
final String title;
final IconData icon;
final  void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      children:  [
        Text(
          title,
          style:const TextStyle(
            fontSize: 28.0,
          ),

        ),
       const Spacer(),
          CustomSearchIcon(
            onPressed: onPressed,
           icon: icon,
        ),
      ],
    );
  }
}