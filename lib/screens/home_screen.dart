import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  final Function onTap;
  final bool isDark;

  const HomeScreen({super.key, required this.onTap, required this.isDark});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            widget.onTap();
          },
          child: Icon(
            widget.isDark ? Icons.light_mode_rounded : Icons.nightlight_round,
            size: 20,
          ),
        ),
        actions: const [
          Icon(
            Icons.person,
            size: 20,
          ),
          SizedBox(width: 20),
        ],
      ),
      body: Column(
        children: [
          const Text(
            "Theme Data",
            style: TextStyle(
              fontSize: 30,
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text("Press me"),
          )
        ],
      ),
    );
  }
}
