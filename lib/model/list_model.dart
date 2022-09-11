import 'package:flutter/material.dart';

class Product {
  final String title, description;
  final Color color;
  Product({
    required this.title,
    required this.description,
    required this.color,
  });
}

List<Product> products = [];
