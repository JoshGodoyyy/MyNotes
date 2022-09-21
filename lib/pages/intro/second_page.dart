import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: MediaQuery.of(context).size.height / 2.5,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
              ),
              child: Image.asset('assets/images/tasks.png'),
            ),
            const Text(
              'Tarefas',
              style: TextStyle(
                color: Colors.blueAccent,
                fontWeight: FontWeight.w600,
                fontSize: 24.0,
              ),
            ),
            const Text(
              'Crie suas tarefas e organize-as conforme seu cronograma diário.',
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}
