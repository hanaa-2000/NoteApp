import 'package:flutter/material.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({Key? key, required this.isActive, required this.color}) : super(key: key);
  final bool isActive ;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return isActive ?
     CircleAvatar(
      radius: 38.0,
        backgroundColor:Colors.white,
        child: CircleAvatar(
      radius: 34.0,
      backgroundColor: color,
    ),
    ) :  CircleAvatar(
    radius: 38.0,
    backgroundColor: color,
    );
  }
}


class ColorListView extends StatefulWidget {
  const ColorListView({Key? key}) : super(key: key);

  @override
  State<ColorListView> createState() => _ColorListViewState();
}

class _ColorListViewState extends State<ColorListView>{
int currentIndex =0;

List<Color> colors=const[
  Color(0xffBBDB9B),
  Color(0xffABC4A1),
  Color(0xff9DB4AB),
  Color(0xff8D9D90),
  Color(0xff878E76),
  Color(0xffE7CFBC),
  Color(0xffFFF4EC),
  Color(0xffF2B880),



];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38*2,
      child: ListView.builder(
          itemCount: colors.length,
          scrollDirection: Axis.horizontal,
          itemBuilder:(context,index){
            return  Padding(
             padding:const EdgeInsets.symmetric(horizontal: 6.0),
                child:GestureDetector(
                  onTap: (){
                    currentIndex=index;
                    setState(() {

                    });
                  },
                 child:  ColorItem(
                   color: colors[index],
                  isActive: currentIndex==index,
                ),
            ),
            );
          }
      ),
    );
  }
}
