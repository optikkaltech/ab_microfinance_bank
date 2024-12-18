import 'package:ab_microfinance_bank/utils/static/static_color.dart';
import 'package:flutter/material.dart';

import '../../models/investment_model.dart';
import '../modal/investment_detail.dart';
import '../status_btn.dart';

class InvestmentCard extends StatelessWidget {
  final InvestmentOption option;

  const InvestmentCard(this.option, {super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showModalBottomSheet(
            backgroundColor: Colors.white,
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
            )),
            isScrollControlled: true,
            isDismissible: true,
            enableDrag: true,
            useSafeArea: true,
            useRootNavigator: true,
            context: context,
            builder: (context) => const InvestmentDetailsScreen());
      },
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.grey[300]!),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.15),
                spreadRadius: 3,
                blurRadius: 10,
                offset: const Offset(0, 3),
              )
            ]),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Image
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    alignment: Alignment.center,
                    width: 50,
                    height: 50,
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                        color: Colors.grey[100],
                        borderRadius: BorderRadius.circular(12)),
                    child: Image.asset(option.imageUrl, fit: BoxFit.fill),
                  ),
                  const SizedBox(height: 8),

                  // Return % and Time
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '${option.returnPercentage}%',
                        style: const TextStyle(
                            color: TColor.statusColor,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Returns in ${option.returnTime}',
                        style: TextStyle(fontSize: 12, color: Colors.grey[500]),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  // Investment Name
                  Text(option.investmentName,
                      style: const TextStyle(fontWeight: FontWeight.bold)),
                  const SizedBox(height: 8),
                ],
              ),

              // Price per unit and status in its own column
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Price per unit
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text(
                            '₦${option.unitPrice.toStringAsFixed(0)}',
                            style: const TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w500),
                          ),
                          Text(
                            'per unit',
                            style: TextStyle(
                                fontSize: 12, color: Colors.grey[500]),
                          ),
                          const SizedBox(height: 8),
                        ],
                      ),
                      // Status Button
                      Container(
                        child: option.status == "Still selling"
                            ? StatusButton(
                                status: option.status,
                                color: TColor.statusColor.withOpacity(0.1),
                                textColor: TColor.statusColor,
                              )
                            : StatusButton(
                                status: option.status,
                                color: TColor.pickStatusColor.withOpacity(0.1),
                                textColor: TColor.pickStatusColor,
                              ),
                      )
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
