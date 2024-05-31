import 'dart:convert';

class PokemonsModel {
  String name;
  String img;
  List<String> type;
  String numPokemon;
  String height;
  String weight;
  String candy;
  String candy_count;
  String egg;
  String spawn_chance;
  String avg_spawns;
  String spawn_time;
  // List<double>? multipliers;
  List<String> weaknesses;

  PokemonsModel(
      {required this.name,
      required this.img,
      required this.type,
      required this.numPokemon,
      required this.height,
      required this.weight,
      required this.candy,
      required this.candy_count,
      required this.egg,
      required this.spawn_chance,
      required this.avg_spawns,
      required this.spawn_time,
      // required this.multipliers,
      required this.weaknesses});

  factory PokemonsModel.fromJson(Map<String, dynamic> json) => PokemonsModel(
        name: json["name"],
        img: json["img"],
        type: List<String>.from(json["type"].map((e) => e)),
        numPokemon: json["num"],
        height: json["height"],
        weight: json["weight"],
        candy: json["candy"],
        candy_count: json["candy_count"].toString(),
        egg: json["egg"],
        spawn_chance: json["spawn_chance"].toString(),
        avg_spawns: json["avg_spawns"].toString(),
        spawn_time: json["spawn_time"].toString(),
        // multipliers: List<double>.from(
        //     json["multipliers"].map((e) => e == null ? 1.1 : 2.2)),
        weaknesses: List<String>.from(json["weaknesses"].map((e) => e)),
      );
}
