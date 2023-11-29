import 'package:flutter/material.dart';

class Service extends StatelessWidget {
  const Service({super.key, required this.index});

  final int index;

  @override
  Widget build(BuildContext context) {
    return Image(
      height: 50,
      width: 50,
      image: AssetImage('assets/$index.png'),
    );
  }
}
