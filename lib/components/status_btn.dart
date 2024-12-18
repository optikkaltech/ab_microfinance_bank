import 'package:flutter/material.dart';

class StatusButton extends StatelessWidget {
  final String status;
  final Color color;
  final Color textColor;
  const StatusButton(
      {super.key,
      required this.status,
      required this.color,
      required this.textColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(10), color: color),
      padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 7),
      child: Text(
        status,
        style: TextStyle(fontSize: 12, color: textColor),
      ),
    );
  }
}
