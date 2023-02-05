import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pokemonapp/pokemon_card.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: 
     ThemeData(),
      title: "PokemonApp",
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List pokemons = [];

  Future<void> fetchdata() async {
    final String response =
        await rootBundle.loadString("./lib/pokemon-data.json");
    final data = await jsonDecode(response);
    setState(() {
      pokemons = data["pokemons"];
    });
    print(pokemons);
  }

  @override
  void initState() {
    super.initState();
    fetchdata();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Pokemon Cards",
          textAlign: TextAlign.center,
         
        ),
          backgroundColor: Color.fromARGB(255, 25, 117, 114), 
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Wrap(
          runSpacing: 25,
          children: [
            ...pokemons.map((e) => PokemonCard(
                imgUrl: e["imageUrl"],
                pokemonName: e["name"],
                pokemonDesc: e["description"]))
          ],
        ),
      ),
    );
  }
}
