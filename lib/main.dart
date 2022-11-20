import 'package:flutter/material.dart';
import 'package:todo_app/screens/home_screen.dart';
import 'package:todo_app/utils/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isDark = false;
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    onToggleTheme() {
      setState(() {
        isDark = !isDark;
      });
      print(isDark);
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      themeMode: isDark ? ThemeMode.dark : ThemeMode.light,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      color: blue,
      home: HomeScreen(
        onTap: onToggleTheme,
        isDark: isDark,
      ),
    );
  }
}
