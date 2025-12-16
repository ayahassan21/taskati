import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String title;
  final void Function()? onPressed;

  const Button({super.key, required this.title, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return  ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.purple,
            minimumSize: Size(double.infinity, 70),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))),
        onPressed: onPressed, child: Text(title,
      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color: Colors.white),));
  }
}
