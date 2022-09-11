import 'package:flutter/material.dart';

import '../model/list_model.dart';

class ListCard extends StatelessWidget {
  const ListCard({
    Key? key,
    required this.product,
    required this.press,
  }) : super(key: key);

  final Product product;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Container(
        padding: const EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          color: product.color,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Column(
          children: [
            Text(
              product.title,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 19,
              ),
            ),
            Text(
              product.description,
              maxLines: 5,
              style: const TextStyle(
                fontSize: 16,
                color: Colors.black54,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
