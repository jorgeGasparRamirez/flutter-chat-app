import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final VoidCallback action;

  const CustomButton({super.key, required this.title, required this.action});


  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 50,
      child: ElevatedButton(
          style: ButtonStyle(backgroundColor: WidgetStateProperty.all(Colors.blue[600])),
          onPressed: action,
          child:  Text(title, style: const TextStyle(color: Colors.white, fontSize: 16),)),
    );
  }
}
