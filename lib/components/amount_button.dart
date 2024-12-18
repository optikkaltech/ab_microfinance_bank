import 'package:flutter/material.dart';

class AmountButton extends StatelessWidget {
  final String amount;
  final bool isOtherAmount;

  const AmountButton(
      {super.key, required this.amount, this.isOtherAmount = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: isOtherAmount
              ? Border.all(color: Colors.grey.shade100)
              : Border.all(color: Colors.transparent),
          color: isOtherAmount ? Colors.grey[50] : Colors.grey[100]),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Text(
          amount,
          style: TextStyle(
            color: isOtherAmount ? Colors.grey[600] : Colors.grey[800],
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
