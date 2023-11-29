import 'package:flutter/material.dart';

class Myorder extends StatelessWidget {
  const Myorder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My order"),
      ),
      body: const Center(
        child: Text("Myorder"),
      ),
    );
  }
}
