import 'package:flutter/material.dart';

class SarchBar extends StatelessWidget {
  const SarchBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        decoration: BoxDecoration(
          color: Theme.of(context).cardColor,
          borderRadius: BorderRadius.circular(5.0),
        ),
        child: TextFormField(
          decoration: const InputDecoration(
            prefixIcon: Icon(
              Icons.search,
            ),
            hintText: 'Search',
            hintStyle: TextStyle(),
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
            ),
          ),
        ),
      ),
    );
  }
}
