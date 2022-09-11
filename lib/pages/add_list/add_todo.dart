import 'package:flutter/material.dart';
import 'package:mynotes/model/list_model.dart';

class AddTodo extends StatefulWidget {
  const AddTodo({super.key});

  @override
  State<AddTodo> createState() => _AddTodoState();
}

class _AddTodoState extends State<AddTodo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
        actionsIconTheme: const IconThemeData(color: Colors.black),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.push_pin_outlined),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.dashboard_outlined),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            TextFormField(
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
              height: 20,
            ),
            TextFormField(
              minLines: 5,
              maxLines: 25,
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
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.blue.withOpacity(0.5),
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
                    colorSelection(products[0].color),
                    colorSelection(products[1].color),
                    colorSelection(products[2].color),
                    colorSelection(products[3].color),
                  ],
                ),
                const Spacer(),
                InkWell(
                  onTap: () {},
                  child: Container(
                    padding: const EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.blue.withOpacity(0.5),
                          spreadRadius: 2.0,
                          blurRadius: 8.0,
                        )
                      ],
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
        onTap: () {},
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
