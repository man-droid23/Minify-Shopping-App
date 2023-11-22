import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class BottomNavBar extends StatelessWidget {
  final void Function(int)? onTabChange;

  const BottomNavBar({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: GNav(
        color: const Color.fromARGB(255, 200, 187, 164),
        activeColor: const Color.fromARGB(255, 119, 107, 93),
        tabActiveBorder: Border.all(color: const Color.fromARGB(255, 222, 208, 196),),
        tabBackgroundColor: const Color.fromARGB(255, 243, 238, 234),
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        gap: 8,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        onTabChange: (value) => onTabChange!(value),
        tabs: const [
          GButton(
            icon: Icons.shopping_bag,
            text: 'Shop',
          ),
          GButton(
            icon: Icons.shopping_cart,
            text: 'Cart',
          ),
        ],
      ),
    );
  }
}