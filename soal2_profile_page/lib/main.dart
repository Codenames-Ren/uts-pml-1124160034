import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatefulWidget {
  const new({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  ThemeMode _mode = ThemeMode.light;

  void _toggleTheme(bool dark) {
    setState(() {
      if (dark) {
        _mode = ThemeMode.dark;
      }
      _mode = ThemeMode.light;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Profil Bayu Sukma",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueAccent),
      ),
      darkTheme: ThemeData(useMaterial3: true, brightness: Brightness.dark),

      themeMode: _mode,
      initialRoute: "/",
      routes: {
        "/": (context) {
          return Scaffold(
            appBar: AppBar(title: const Text("Profile Mahasiswa")),
            body: Center(
              child: Switch(
                value: _mode == ThemeMode.dark,
                onChanged: (value) {
                  _toggleTheme(value);
                },
              ),
            ),
          );
        },
      },
    );
  }
}
