import 'package:ab_microfinance_bank/utils/static/static_color.dart';
import 'package:ab_microfinance_bank/utils/static/static_images.dart';
import 'package:flutter/material.dart';

import '../amount_button.dart';
import '../invest_button.dart';
import '../investment_details_header.dart';
import '../text_input_field.dart';

class InvestmentDetailsScreen extends StatefulWidget {
  const InvestmentDetailsScreen({super.key});

  @override
  _InvestmentDetailsScreenState createState() =>
      _InvestmentDetailsScreenState();
}

class _InvestmentDetailsScreenState extends State<InvestmentDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Investment Details Header
            const SizedBox(height: 30),
            const InvestmentDetailsHeader(
              imageUrl: TImages.logoOne,
              investmentName: 'Propertyvest Estate Investment',
              companyName: 'by PropertyVest',
              returnPercentage: 20,
              returnTime: '9 months',
            ),
            const SizedBox(height: 20),

            // Amount Buttons Row
            const Wrap(
              spacing: 10.0,
              runSpacing: 10.0,
              children: [
                AmountButton(amount: '₦5,000'),
                AmountButton(amount: '₦10,000'),
                AmountButton(amount: '₦20,000'),
                AmountButton(amount: '₦50,000'),
                TextInputField(
                    labelText: 'Enter other amount',
                    hintText: '+234 806 123 8970'),
                // AmountButton(amount: 'Enter other amount', isOtherAmount: true),
              ],
            ),
            const SizedBox(height: 20),

            // Phone Number Input
            const TextInputField(
                labelText: 'Phone Number', hintText: '+234 806 123 8970'),
            const SizedBox(height: 16),

            // Customer Name Input
            const TextInputField(
                labelText: 'Customer Name', hintText: 'Joseph Kalu'),
            const SizedBox(height: 16),

            // Pin Input
            const TextInputField(
                labelText: 'Pin', hintText: '****', isPin: true),
            const SizedBox(height: 30),

            // Invest Button
            InvestButton(label: 'INVEST NOW', onPressed: () {}),

            const SizedBox(height: 10),

            // Learn More Button
            Align(
              alignment: Alignment.center,
              child: TextButton(
                onPressed: () {},
                child: const Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Learn more about the investment',
                      style:
                          TextStyle(fontSize: 16, color: TColor.primaryColor),
                    ),
                    Icon(Icons.arrow_right, color: TColor.primaryColor),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
