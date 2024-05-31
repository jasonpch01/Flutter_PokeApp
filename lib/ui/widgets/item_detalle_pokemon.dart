import 'package:flutter/material.dart';

class ItemDetallePokemon extends StatelessWidget {
  String title;
  String data;

  ItemDetallePokemon({required this.title, required this.data});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
      child: Row(
        children: [
          Text(
            title,
            style: TextStyle(color: Colors.black45),
          ),
          SizedBox(
            width: 10,
          ),
          Text(data)
        ],
      ),
    );
  }
}
