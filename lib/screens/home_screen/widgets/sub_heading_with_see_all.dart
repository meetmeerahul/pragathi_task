import 'package:flutter/material.dart';
import 'package:pragathi_task/screens/home_screen/widgets/heading.dart';

class SubHeaddinWithSeaAll extends StatelessWidget {
  const SubHeaddinWithSeaAll({
    super.key,
    required this.matter,
  });

  final String matter;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Heading(matter: matter),
          const Text(
            "See all",
            style: TextStyle(color: Colors.green),
          )
        ],
      ),
    );
  }
}
