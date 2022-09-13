import 'package:flutter/material.dart';
import 'package:mynotes/Customs/Colors/note_colors.dart';

import '../Customs/Themes/theme_manager.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  Color backgroundColor = CustomColors.blue;
  String userImage = "assets/images/avatar_2.png";

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
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(color: Theme.of(context).hintColor),
        title: const Text(
          'Configurações de Usuário',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Container(
                width: 190,
                height: 190,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  color: backgroundColor,
                ),
                child: Image.asset(
                  userImage,
                  fit: BoxFit.contain,
                ),
              ),
              const SizedBox(
                height: 4,
              ),
              Column(
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      selectImage("assets/images/avatar_1.png"),
                      selectImage("assets/images/avatar_2.png"),
                      selectImage("assets/images/avatar_3.png"),
                      selectImage("assets/images/avatar_4.png"),
                      selectImage("assets/images/avatar_5.png"),
                      selectImage("assets/images/avatar_6.png"),
                    ],
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      selectImage("assets/images/avatar_7.png"),
                      selectImage("assets/images/avatar_8.png"),
                      selectImage("assets/images/avatar_9.png"),
                      selectImage("assets/images/avatar_10.png"),
                      selectImage("assets/images/avatar_11.png"),
                      selectImage("assets/images/avatar_12.png"),
                    ],
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  selectColor(CustomColors.blue),
                  selectColor(CustomColors.lightOrange),
                  selectColor(CustomColors.orange),
                  selectColor(CustomColors.pink),
                  selectColor(CustomColors.purple),
                  selectColor(CustomColors.red),
                ],
              ),
              TextFormField(
                initialValue: 'Josh',
                decoration: const InputDecoration(
                  hintText: 'Usuário',
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Modo escuro'),
                  Switch(
                    value: ThemeManager.instance.themeMode == ThemeMode.dark,
                    onChanged: (newValue) {
                      ThemeManager.instance.togleTheme(newValue);
                    },
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Agrupar notas'),
                  Switch(
                    value: ThemeManager.instance.group,
                    onChanged: (value) {
                      setState(() {
                        ThemeManager.instance.group =
                            !ThemeManager.instance.group;
                      });
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Padding selectColor(Color color) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: InkWell(
        onTap: () {
          setState(() {
            backgroundColor = color;
          });
        },
        child: Container(
          width: 30,
          height: 30,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: color,
          ),
        ),
      ),
    );
  }

  Padding selectImage(String imagePath) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: InkWell(
        onTap: () {
          setState(() {
            userImage = imagePath;
          });
        },
        child: Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0),
            color: backgroundColor,
          ),
          child: Image.asset(
            imagePath,
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}
