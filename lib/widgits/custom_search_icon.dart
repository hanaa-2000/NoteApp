import 'package:flutter/material.dart';

class CustomSearchIcon extends StatelessWidget {
  const CustomSearchIcon({Key? key, required this.icon}) : super(key: key);
final IconData icon ;
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
        child: Icon(icon,size: 28.0,),
      ),
    );
  }
}
