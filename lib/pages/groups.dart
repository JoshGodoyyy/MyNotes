import 'package:flutter/material.dart';

import '../Customs/Colors/note_colors.dart';

class Groups extends StatefulWidget {
  const Groups({super.key});

  @override
  State<Groups> createState() => _GroupsState();
}

class _GroupsState extends State<Groups> {
  Color backgroundColor = CustomColors.blue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(color: Theme.of(context).hintColor),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            children: [
              Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          decoration: BoxDecoration(
                            color: Theme.of(context).cardColor,
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          child: TextFormField(
                            decoration: const InputDecoration(
                              hintText: 'Novo Grupo',
                              border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10.0,
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.all(20.0),
                          backgroundColor: backgroundColor,
                        ),
                        child: const Icon(
                          Icons.add,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 6.0,
                  ),
                  Row(
                    children: [
                      selectColor(CustomColors.blue),
                      selectColor(CustomColors.lightOrange),
                      selectColor(CustomColors.orange),
                      selectColor(CustomColors.pink),
                      selectColor(CustomColors.purple),
                      selectColor(CustomColors.red),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 16.0,
              ),
              Column(
                children: [
                  newGroup('Grupo 1', CustomColors.blue),
                  newGroup('Grupo 2', CustomColors.lightOrange),
                  newGroup('Grupo 3', CustomColors.orange),
                  newGroup('Grupo 4', CustomColors.pink),
                  newGroup('Grupo 5', CustomColors.purple),
                  newGroup('Grupo 6', CustomColors.red),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  InkWell newGroup(String title, Color color) {
    return InkWell(
      onTap: () {},
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Container(
              width: 25,
              height: 25,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: color,
              ),
            ),
          ),
          const SizedBox(
            width: 16.0,
          ),
          Text(
            title,
            style: const TextStyle(fontSize: 16.0),
          )
        ],
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
}
