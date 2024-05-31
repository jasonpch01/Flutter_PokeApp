import 'package:flutter/material.dart';

class ItemWeaknesses extends StatelessWidget {
  String text;
  ItemWeaknesses({required this.text});

  @override
  Widget build(BuildContext context) {
    print(text);
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 2),
      decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.27),
          borderRadius: BorderRadius.circular(10)),
      child: Text(
        text,
        style: TextStyle(color: Colors.black),
      ),
    );
  }
}
