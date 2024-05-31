import 'package:flutter/material.dart';
import 'package:flutter_pokeapp/ui/general/colors.dart';
import 'package:flutter_pokeapp/ui/widgets/item_type.dart';

import 'package:flutter_pokeapp/models/model_pokemon.dart';
import 'package:flutter_pokeapp/pages/detalle_pokemon.dart';

class ItemPokemon extends StatelessWidget {
  // String name;
  // String image;
  // List<String> types;

  //  ItemPokemon({required this.name, required this.image, required this.types});

  PokemonsModel Pokemon;
  ItemPokemon({required this.Pokemon});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => DetallePokemon(
                    Pokemon: Pokemon,
                  )),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          color: colorsPokemon[Pokemon.type[0]],
          borderRadius: BorderRadius.circular(18),
        ),
        child: Stack(
          children: [
            Positioned(
              bottom: -35,
              right: -30,
              child: Image.asset('assets/imagenes/pokeball.png',
                  height: 200, opacity: const AlwaysStoppedAnimation(.4)),
            ),
            Positioned(
              bottom: 0,
              right: -10,
              child: Image.network(Pokemon.img),
            ),
            Padding(
                padding: EdgeInsets.all(12),
                child: Column(
                  children: [
                    Text(
                      Pokemon.name,
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                    ...Pokemon.type.map((e) => ItemType(text: e)).toList(),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
