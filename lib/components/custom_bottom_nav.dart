import 'package:ab_microfinance_bank/utils/static/static_images.dart';
import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onItemTapped;

  const CustomBottomNavigationBar({
    super.key,
    required this.selectedIndex,
    required this.onItemTapped,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, -3), // changes position of shadow
          ),
        ],
      ),
      child: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage(TImages.homeIcon)),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage(TImages.savingIcon)),
            label: 'Save',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage(TImages.briefCase)),
            label: 'Portfolio',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage(TImages.reward)),
            label: 'Rewards',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage(TImages.account)),
            label: 'Account',
          ),
        ],
        currentIndex: selectedIndex,
        selectedItemColor: Colors.blue[800],
        unselectedItemColor: Colors.grey[600],
        onTap: onItemTapped,
        type: BottomNavigationBarType.fixed,
        showUnselectedLabels: true,
      ),
    );
  }
}
