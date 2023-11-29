import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pragathi_task/screens/home_screen/widgets/scroll_label.dart';

class HorizontalList extends StatelessWidget {
  const HorizontalList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(100)),
      height: 200.0, // Set a specific height for the horizontal list
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: const [
          ScrollLabel(),
          ScrollLabel(),
          ScrollLabel(),
        ],
      ),
    );
  }
}
