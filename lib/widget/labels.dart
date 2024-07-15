import 'package:flutter/material.dart';

class Labels extends StatelessWidget {
  final String nameRoute;
  final String title;
  final String subtitle;

  const Labels(
      {super.key,
      required this.nameRoute,
      required this.title,
      required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            title,
            style: const TextStyle(
                color: Colors.black54,
                fontSize: 15,
                fontWeight: FontWeight.w300),
          ),
          const SizedBox(
            height: 10,
          ),
          GestureDetector(
            onTap: () => Navigator.pushReplacementNamed(context, nameRoute),
            child: Text(
              subtitle,
              style: TextStyle(
                  color: Colors.blue[600],
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
            ),
          )
        ],
      ),
    );
  }
}
