import 'package:flutter/widgets.dart';

class Heading extends StatelessWidget {
  const Heading({
    super.key,
    required this.matter,
  });

  final String matter;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
      child: Text(
        matter,
        style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
    );
  }
}
