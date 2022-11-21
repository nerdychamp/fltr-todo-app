import 'package:flutter/material.dart';

typedef Callback = void Function();

class ThemeToggleBtn extends StatelessWidget {
  final void Function() onTap;
  final bool isDark;

  const ThemeToggleBtn({
    super.key,
    required this.onTap,
    required this.isDark,
  });

  @override
  Widget build(BuildContext ctx) {
    return GestureDetector(
      onTap: onTap,
      child: Icon(
        isDark ? Icons.light_mode_rounded : Icons.nightlight_round,
        size: 20,
      ),
    );
  }
}
