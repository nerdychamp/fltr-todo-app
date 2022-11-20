import 'package:flutter/material.dart';

import '../services/theme_services.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late bool isDark;

  @override
  void initState() {
    super.initState();
    setState(() {
      isDark = ThemeService().isDark;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            ThemeService().switchTheme();
            setState(() {
              isDark = ThemeService().isDark;
            });
          },
          child: Icon(
            isDark ? Icons.light_mode_rounded : Icons.nightlight_round,
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
        children: const [
          Text(
            "Theme Data",
            style: TextStyle(
              fontSize: 30,
            ),
          ),
        ],
      ),
    );
  }
}
