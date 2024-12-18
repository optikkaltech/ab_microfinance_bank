import 'package:flutter/material.dart';

class InvestmentDetailsHeader extends StatelessWidget {
  final String imageUrl;
  final String investmentName;
  final String companyName;
  final int returnPercentage;
  final String returnTime;

  const InvestmentDetailsHeader({
    super.key,
    required this.imageUrl,
    required this.investmentName,
    required this.companyName,
    required this.returnPercentage,
    required this.returnTime,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          alignment: Alignment.center,
          width: 60,
          height: 60,
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: Colors.grey[100],
            borderRadius: BorderRadius.circular(15),
          ),
          child: Image.asset(imageUrl, fit: BoxFit.fill),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                investmentName,
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[800]),
              ),
              const SizedBox(height: 4),
              Text(
                companyName,
                style: TextStyle(fontSize: 14, color: Colors.grey[500]),
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  Text(
                    '${returnPercentage}%',
                    style: TextStyle(
                        color: Colors.green[400], fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(width: 5),
                  Text(
                    'Returns in $returnTime',
                    style: TextStyle(fontSize: 12, color: Colors.grey[500]),
                  ),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}
