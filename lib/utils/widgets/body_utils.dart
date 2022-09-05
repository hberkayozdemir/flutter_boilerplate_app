import 'package:dessert_and_more/app/features/home/home.dart';
import 'package:flutter/material.dart';

class BodyUtils {
  static List<Widget> views = [
    const Home(),
    Container(
      color: Colors.green,
      height: 100,
      width: 200,
    ),
    const SizedBox(
      height: 50,
    ),
  ];
}
