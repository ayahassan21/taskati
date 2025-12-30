import 'package:flutter/material.dart';

class Calender extends StatelessWidget {
  final bool isActive;
  final String title;
  final String date;
  final String day;
  final Color color;
  const Calender({super.key, required this.title, required this.date, required this.day, required this.color, required this.isActive});

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
    Column(
    children: [
    Container(
    width: 100,
      padding: EdgeInsets.symmetric(vertical: 10,),
      decoration: BoxDecoration(
        color: isActive?Colors.deepPurple:Colors.transparent,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(title, style: TextStyle(color: isActive?Colors.white:Colors.black, fontSize: 20,fontWeight: FontWeight.bold),),
          SizedBox(height: 6),
          Text(date, style: TextStyle(color: isActive?Colors.white:Colors.black, fontSize: 25, fontWeight: FontWeight.bold,),),
          SizedBox(height: 6),
          Text(day, style: TextStyle(color: isActive?Colors.white:Colors.black, fontSize: 20,fontWeight: FontWeight.bold),),
        ],
      ),
    ),
    ],
    ),
    ]
    );
  }
}
