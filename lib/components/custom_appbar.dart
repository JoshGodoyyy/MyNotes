import 'package:flutter/material.dart';
import 'package:mynotes/settings/configurations.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    String username = Configurations.instance.username!;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Olá, $username',
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              //color: Colors.black,
            ),
          ),
          Container(
            height: 45,
            width: 45,
            decoration: BoxDecoration(
              color: Colors.blue[100],
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Image.asset(
              "assets/images/avatar_2.png",
              fit: BoxFit.contain,
            ),
          )
        ],
      ),
    );
  }
}
