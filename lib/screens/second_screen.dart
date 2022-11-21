import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  final String? payload;

  const SecondScreen({
    super.key,
    this.payload,
  });

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("Second page"),
      ),
    );
  }
}
