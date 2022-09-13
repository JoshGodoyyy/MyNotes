import 'package:flutter/material.dart';

import '../Customs/Themes/theme_manager.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
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
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Modo escuro'),
                  Switch(
                      value: ThemeManager.instance.themeMode == ThemeMode.dark,
                      onChanged: (newValue) {
                        ThemeManager.instance.togleTheme(newValue);
                      }),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
