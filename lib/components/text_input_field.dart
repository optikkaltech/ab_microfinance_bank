import 'package:flutter/material.dart';

class TextInputField extends StatelessWidget {
  final String labelText;
  final String hintText;
  final bool isPin;
  const TextInputField(
      {super.key,
      required this.labelText,
      required this.hintText,
      this.isPin = false});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          labelText,
          style: TextStyle(fontSize: 16, color: Colors.grey[800]),
        ),
        const SizedBox(height: 5),
        TextField(
          obscureText: isPin,
          decoration: InputDecoration(
              hintText: hintText,
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide.none),
              filled: true,
              fillColor: Colors.grey[100]),
        ),
      ],
    );
  }
}
