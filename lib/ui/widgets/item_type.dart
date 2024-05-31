import 'package:flutter/material.dart';

class ItemType extends StatelessWidget {
  String text;
  ItemType({required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
      margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 2),
      decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.27),
          borderRadius: BorderRadius.circular(10)),
      child: Text(
        text,
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
