import 'package:flutter/material.dart';
import 'package:soal2_profile_page/screens/about_page.dart';
import 'package:soal2_profile_page/screens/profile_page.dart';

import 'screens/login_page.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  ThemeMode _mode = ThemeMode.system;

  void _toggleTheme(bool dark) {
    setState(() {
      if (dark) {
        _mode = ThemeMode.dark;
      } else {
        _mode = ThemeMode.light;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Profil Bayu",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blueAccent,
          brightness: Brightness.light,
        ),
      ),

      darkTheme: ThemeData(
        useMaterial3: true,
        brightness: Brightness.dark,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blue,
          brightness: Brightness.dark,
        ),
      ),

      themeMode: _mode,
      initialRoute: "/",
      routes: {
        "/": (context) {
          return const LoginPage();
        },

        "/home": (context) {
          bool dark = Theme.of(context).brightness == Brightness.dark;

          return ProfilePage(isDark: dark, onThemeChanged: _toggleTheme);
        },

        "/about": (context) {
          return const AboutMe();
        },
      },
    );
  }
}
