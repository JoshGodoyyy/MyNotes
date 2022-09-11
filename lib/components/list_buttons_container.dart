import 'package:flutter/material.dart';

import 'list_buttons.dart';

class ListButtonsContainer extends StatelessWidget {
  const ListButtonsContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Row(
        children: [
          ListButtons(
            title: 'Notas',
            press: () {},
            isActive: true,
          ),
          ListButtons(
            title: 'Tarefas',
            press: () {},
          ),
          ListButtons(
            title: 'Configurações',
            press: () {},
          ),
        ],
      ),
    );
  }
}
