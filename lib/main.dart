import 'package:flutter/material.dart';
import 'package:mynotes/customs/themes/theme_constants.dart';
import 'package:mynotes/customs/themes/theme_manager.dart';
import 'package:mynotes/pages/home.dart';
import 'package:mynotes/pages/introduction.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void dispose() {
    ThemeManager.instance.removeListener(themeListener);
    super.dispose();
  }

  @override
  void initState() {
    ThemeManager.instance.addListener(themeListener);
    super.initState();
  }

  themeListener() {
    if (mounted) {
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Introduction(),
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: ThemeManager.instance.themeMode,
    );
  }
}
