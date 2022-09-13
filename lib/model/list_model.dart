import 'package:flutter/material.dart';
import 'package:mynotes/Customs/Colors/note_colors.dart';

class Product {
  final String title, description;
  final Color color;
  Product({
    required this.title,
    required this.description,
    required this.color,
  });
}

List<Product> products = [
  Product(
    title: 'Estudar',
    description: '...',
    color: CustomColors.blue,
  ),
  Product(
    title: 'Relações',
    description: '...',
    color: CustomColors.red,
  ),
  Product(
    title: 'Trabalho',
    description: '...',
    color: CustomColors.orange,
  ),
  Product(
    title: 'Lazer',
    description: '...',
    color: CustomColors.purple,
  ),
];
