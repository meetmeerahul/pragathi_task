import 'package:flutter/material.dart';
import 'package:pragathi_task/screens/home_screen/widgets/crazy_deals.dart';

class CrazyDealsHorizontal extends StatelessWidget {
  const CrazyDealsHorizontal({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(100)),
      height: 200.0, // Set a specific height for the horizontal list
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: const [
          CrazyDealsWidget(),
          CrazyDealsWidget(),
          CrazyDealsWidget(),
        ],
      ),
    );
  }
}
