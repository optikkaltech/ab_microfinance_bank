import 'package:flutter/material.dart';

class CategoryChips extends StatelessWidget {
  final List<String> categories;

  const CategoryChips({super.key, required this.categories});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: categories
            .map((category) => Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Chip(
                    label: Text(category,
                        style: const TextStyle(color: Colors.black)),
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: const BorderSide(
                        color: Colors.grey,
                        width: 0.5,
                      ),
                    ),
                  ),
                ))
            .toList(),
      ),
    );
  }
}
