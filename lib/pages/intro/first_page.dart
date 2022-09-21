import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

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
              child: Image.asset('assets/images/company_culture_4x.png'),
            ),
            const Text(
              'Notas',
              style: TextStyle(
                color: Colors.blueAccent,
                fontWeight: FontWeight.w600,
                fontSize: 24.0,
              ),
            ),
            const Text(
              'Crie e edite suas notas, mantendo-as fixadas de forma livre conforme sua preferência ou separadas por grupos.',
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}
