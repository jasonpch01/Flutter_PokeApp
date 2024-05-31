import 'package:flutter/material.dart';
import 'package:flutter_pokeapp/ui/general/colors.dart';
import 'package:flutter_pokeapp/ui/widgets/item_type.dart';
import 'package:flutter_pokeapp/ui/widgets/item_detalle_pokemon.dart';
import 'package:flutter_pokeapp/models/model_pokemon.dart';
import 'package:flutter_pokeapp/ui/widgets/item_weaknesses.dart';

class DetallePokemon extends StatelessWidget {
  PokemonsModel Pokemon;

  DetallePokemon({required this.Pokemon});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: colorsPokemon[Pokemon.type[0]],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: colorsPokemon[Pokemon.type[0]],
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.favorite_border_outlined),
          )
        ],
      ),
      body: Stack(
        children: [
          Positioned(
              top: height * 0.1,
              right: 10,
              child: Image.asset(
                'assets/imagenes/pokeball.png',
                height: 300,
              )),
          Padding(
            padding: const EdgeInsets.all(14.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      Pokemon.name,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 36.0,
                          fontWeight: FontWeight.bold),
                    ),
                    Row(
                      children:
                          Pokemon.type.map((e) => ItemType(text: e)).toList(),
                    )
                  ],
                ),
                Text(
                  "#${Pokemon.numPokemon}",
                  style: TextStyle(color: Colors.white, fontSize: 20.0),
                )
              ],
            ),
          ),
          Column(
            children: [
              Expanded(
                flex: 4,
                child: SizedBox(),
              ),
              Expanded(
                  flex: 8,
                  child: Container(
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30)),
                    ),
                    child: Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Padding(
                          padding: EdgeInsets.all(20),
                          child: Column(
                            children: [
                              Text(
                                'Sobre el Pokemon',
                                style: TextStyle(color: Colors.black45),
                              ),
                              ItemDetallePokemon(
                                  title: 'Altura', data: Pokemon.height),
                              ItemDetallePokemon(
                                  title: 'Peso', data: Pokemon.weight),
                              ItemDetallePokemon(
                                  title: 'candy', data: Pokemon.candy),
                              ItemDetallePokemon(
                                  title: 'egg', data: Pokemon.egg),
                              ItemDetallePokemon(
                                  title: 'spawn_chance',
                                  data: Pokemon.spawn_chance),
                              ItemDetallePokemon(
                                  title: 'avg_spawns',
                                  data: Pokemon.avg_spawns),
                              ItemDetallePokemon(
                                  title: 'spawn_time',
                                  data: Pokemon.spawn_time),
                              Row(
                                children: [
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    'weaknesses',
                                    style: TextStyle(color: Colors.black45),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Row(
                                      children: Pokemon.weaknesses
                                          .map((e) => ItemWeaknesses(text: e))
                                          .toList())
                                ],
                              ),
                            ],
                          ),
                        ),
                        Positioned.fill(
                            top: -80,
                            child: Align(
                              alignment: Alignment.topCenter,
                              child: Image.network(
                                Pokemon.img,
                                height: 100,
                              ),
                            )),
                      ],
                    ),
                  ))
            ],
          ),
        ],
      ),
    );
  }
}
