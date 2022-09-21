import 'package:flutter/material.dart';
import 'package:mynotes/model/list_model.dart';

class Group {
  final String title;
  final Product? product;
  final Color color;

  Group({
    required this.title,
    this.product,
    required this.color,
  });
}

List<Group> groups = [];
