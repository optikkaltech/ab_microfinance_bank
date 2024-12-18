import 'package:ab_microfinance_bank/utils/static/static_color.dart';
import 'package:flutter/material.dart';

import '../components/cards/investment_card.dart';
import '../components/categories_chip.dart';
import '../components/custom_bottom_nav.dart';
import '../components/search_input.dart';
import '../components/title_subtitle.dart';
import '../datas/investment_data.dart';

class InvestmentScreen extends StatefulWidget {
  const InvestmentScreen({super.key});

  @override
  _InvestmentScreenState createState() => _InvestmentScreenState();
}

class _InvestmentScreenState extends State<InvestmentScreen> {
  int _selectedIndex = 0; // State for bottom navigation

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text('Investment',
            style: TextStyle(
              color: Colors.black,
              fontSize: 18,
            )),
        centerTitle: true,
        toolbarHeight: 70,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Title and subtitle widget
              const TitleSubtitle(
                title: 'Choose an investment platform',
                subtitle:
                    'Not sure what you want to invest in? See recommendations.',
                highlightedColor: TColor.statusColor,
              ),
              const SizedBox(height: 20),

              // Search Bar widget
              const SearchInput(),
              const SizedBox(height: 20),

              // Category chips widget
              const CategoryChips(
                categories: [
                  'Real Estate',
                  'Agriculture',
                  'Gold',
                  'Transportation'
                ],
              ),
              const SizedBox(height: 20),
              //Investment grid
              GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.90,
                  crossAxisSpacing: 8,
                  mainAxisSpacing: 8,
                ),
                itemCount: investmentOptions.length,
                itemBuilder: (context, index) =>
                    InvestmentCard(investmentOptions[index]),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(
        selectedIndex: _selectedIndex,
        onItemTapped: _onItemTapped,
      ),
    );
  }
}
