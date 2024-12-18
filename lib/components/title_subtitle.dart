import 'package:flutter/material.dart';

class TitleSubtitle extends StatelessWidget {
  final String title;
  final String subtitle;
  final Color? highlightedColor;
  final TextStyle? baseStyle;

  const TitleSubtitle({
    super.key,
    required this.title,
    required this.subtitle,
    this.highlightedColor,
    this.baseStyle,
  });

  @override
  Widget build(BuildContext context) {
    final defaultBaseStyle =
        baseStyle ?? const TextStyle(fontSize: 16, color: Colors.grey);

    // Split the subtitle into parts
    final parts = subtitle.split("See recommendations.");
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
              fontSize: 34,
              fontWeight: FontWeight.bold,
              color: Colors.grey[700]),
        ),
        const SizedBox(height: 8),
        RichText(
          text: TextSpan(
            style: defaultBaseStyle,
            children: [
              TextSpan(text: parts.first),
              TextSpan(
                text: "See recommendations.",
                style: TextStyle(
                  color: highlightedColor ?? Colors.blue[800],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
