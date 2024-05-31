import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:flutter_pokeapp/ui/widgets/item_pokemon.dart';
import 'package:flutter_pokeapp/models/model_pokemon.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List Pokemons = [];
  List<PokemonsModel> PokemonModel = [];

  initState() {
    super.initState();
    get_DataProkemon();
  }

  get_DataProkemon() async {
    Uri _uri = Uri.parse(
        'https://raw.githubusercontent.com/Biuni/PokemonGO-Pokedex/master/pokedex.json');
    http.Response response = await http.get(_uri);

    if (response.statusCode == 200) {
      Map<String, dynamic> myMap = json.decode(response.body);

      PokemonModel = myMap["pokemon"]
          .map<PokemonsModel>((e) => PokemonsModel.fromJson(e))
          .toList();
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'POKEDEX',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                    ),
                  )
                ],
              ),
              Expanded(
                child: GridView.count(
                    crossAxisCount: 2,
                    shrinkWrap: true,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                    childAspectRatio: 1.35,
                    children: PokemonModel.map(
                      (e) => ItemPokemon(
                        Pokemon: e,
                        //   name: e.name,
                        //   image: e.img,
                        //   types: e.type,
                      ),
                    ).toList()),
              )
            ],
          ),
        ),
      ),
    );
  }
}
