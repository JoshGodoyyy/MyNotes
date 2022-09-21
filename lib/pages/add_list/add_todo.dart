import 'package:flutter/material.dart';
import 'package:mynotes/customs/colors/note_colors.dart';
import 'package:mynotes/model/list_model.dart';
import 'package:mynotes/pages/groups.dart';

class AddTodo extends StatefulWidget {
  const AddTodo({super.key});

  @override
  State<AddTodo> createState() => _AddTodoState();
}

class _AddTodoState extends State<AddTodo> {
  Color selectedColor = CustomColors.blue;
  TextEditingController titleController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();

  void clear() {
    setState(() {
      titleController.clear();
      descriptionController.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(color: Theme.of(context).hintColor),
        actionsIconTheme: IconThemeData(color: Theme.of(context).hintColor),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.push_pin_outlined),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.dashboard_outlined),
          ),
          IconButton(
            onPressed: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const Groups(),
              ),
            ),
            icon: const Icon(Icons.auto_awesome_motion_rounded),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            TextFormField(
              controller: titleController,
              style: const TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 20,
              ),
              decoration: const InputDecoration(
                hintText: 'Título',
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Container(
                height: 1,
                width: MediaQuery.of(context).size.width,
                color: Theme.of(context).hintColor,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            TextFormField(
              minLines: 5,
              maxLines: 25,
              controller: descriptionController,
              style: const TextStyle(
                fontSize: 16,
              ),
              decoration: const InputDecoration(
                hintText: 'Descrição',
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 100.0,
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
          boxShadow: [
            BoxShadow(
              color: Theme.of(context).shadowColor,
              spreadRadius: 2.0,
              blurRadius: 8.0,
            )
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                const Spacer(),
                Row(
                  children: [
                    colorSelection(CustomColors.blue),
                    colorSelection(CustomColors.lightOrange),
                    colorSelection(CustomColors.orange),
                    colorSelection(CustomColors.pink),
                    colorSelection(CustomColors.purple),
                    colorSelection(CustomColors.red),
                  ],
                ),
                const Spacer(),
                InkWell(
                  onTap: () {
                    String titulo = titleController.text;
                    String descricao = descriptionController.text;

                    products.add(
                      Product(
                          title: titulo,
                          description: descricao,
                          color: selectedColor),
                    );

                    clear();
                  },
                  child: Container(
                    padding: const EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      color: selectedColor,
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.check,
                    ),
                  ),
                ),
                const Spacer(),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Padding colorSelection(Color color) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: InkWell(
        onTap: () {
          setState(() {
            selectedColor = color;
          });
        },
        child: Container(
          height: 30,
          width: 30,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
      ),
    );
  }
}
