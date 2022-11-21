import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:todo_app/screens/home_screen.dart';
import 'package:todo_app/services/theme_service.dart';
import 'package:todo_app/utils/theme.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      themeMode: ThemeService().themeMode,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      color: blue,
      home: const HomeScreen(),
    );
  }
}
