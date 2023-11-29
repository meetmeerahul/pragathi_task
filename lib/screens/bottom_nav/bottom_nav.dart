import 'package:flutter/material.dart';

import 'package:pragathi_task/screens/account/my_account.dart';
import 'package:pragathi_task/screens/cart_screen/cart_screen.dart';
import 'package:pragathi_task/screens/home_screen/home_screen.dart';
import 'package:pragathi_task/screens/my_order/my_order.dart';
import 'package:provider/provider.dart';

import '../../provider/provider_class.dart';

// ignore: must_be_immutable
class BottomNavBar extends StatelessWidget {
  List<dynamic> screens = [
    const HomeScreen(),
    const CartScreen(),
    const Myorder(),
    const MyAccount()
  ];

  BottomNavBar({super.key});
  @override
  Widget build(BuildContext context) {
    final screenindexprovider = Provider.of<BottomNavIndex>(context);
    int currentScreenIndex = screenindexprovider.getCurrentIndex;
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.grey,
        showSelectedLabels: true,
        elevation: 1,
        currentIndex: currentScreenIndex,
        onTap: (value) => screenindexprovider.updateIndex(value),
        items: [
          BottomNavigationBarItem(
            label: 'Home',
            icon: currentScreenIndex == 0
                ? const Icon(Icons.home)
                : const Icon(Icons.home_filled),
          ),
          BottomNavigationBarItem(
            label: 'Cart',
            icon: currentScreenIndex == 0
                ? const Icon(Icons.shopping_bag)
                : const Icon(Icons.shopping_bag_outlined),
          ),
          BottomNavigationBarItem(
            label: 'My Orders',
            icon: currentScreenIndex == 0
                ? const Icon(Icons.shopping_cart_checkout_sharp)
                : const Icon(Icons.shopping_cart_checkout_outlined),
          ),
          BottomNavigationBarItem(
            label: 'My Account',
            icon: currentScreenIndex == 0
                ? const Icon(Icons.person_2)
                : const Icon(Icons.person_2_outlined),
          ),
        ],
      ),
      body: screens[currentScreenIndex],
    );
  }
}
