import 'package:flutter/material.dart';

class CustomSearchIcon extends StatelessWidget {
  const CustomSearchIcon({Key? key, required this.icon, this.onPressed}) : super(key: key);
final IconData icon ;
final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 46.0,
        height: 46.0,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(.08),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Center(
        child: IconButton(
          onPressed: onPressed,
          icon: Icon(icon,size: 28.0,),
        )
      ),
    );
  }
}
