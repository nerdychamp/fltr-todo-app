import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_app/services/notification_service.dart';
import 'package:todo_app/widgets/theme_toggle_btn.dart';

import '../services/theme_service.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late bool isDark;
  late NotifyHelper notifyHelper;

  @override
  void initState() {
    super.initState();
    notifyHelper = NotifyHelper();
    notifyHelper.initializeNotification();
    notifyHelper.requestIOSPermissions();
    setState(() {
      isDark = ThemeService().isDark;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: ThemeToggleBtn(
          onTap: () {
            ThemeService().switchTheme();
            setState(() {
              isDark = ThemeService().isDark;
            });
            notifyHelper.displayNotification(
              title: "Theme changed",
              body: Get.isDarkMode ? "Dark mode" : "Light mode",
            );
            notifyHelper.scheduledNotification();
          },
          isDark: isDark,
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
