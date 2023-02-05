import 'package:flutter/material.dart';
import 'package:pokemonapp/pokemon_page.dart';

class PokemonCard extends StatelessWidget {
  const PokemonCard(
      {Key? key,
      required this.imgUrl,
      required this.pokemonName,
      required this.pokemonDesc})
      : super(key: key);
  final String imgUrl;
  final String pokemonName;
  final String pokemonDesc;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: ((context) => Pokemonpage(imgUrl: imgUrl, pokemonName: pokemonName, pokemonDesc: pokemonDesc))));
      },
      child: Center(
          child: Material(
            
        elevation: 15,
        borderRadius: BorderRadius.all(Radius.circular(20)),
        child: Container(
          margin: EdgeInsets.all(25),
          height: MediaQuery.of(context).size.height - 300,
         
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              Color.fromARGB(0, 90, 129, 147),
              Color.fromARGB(255, 7, 199, 129)
              
            ])
          ),
          child: Column(
            children: [
              Image.network(
                  imgUrl),
              SizedBox(
                height: 40,
              ),
              Text(
                pokemonName,
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    background: Paint()
                      ..color = Colors.grey.withOpacity(0.5)
                      ..style = PaintingStyle.stroke
                      ..strokeWidth = 50
                      ..strokeJoin = StrokeJoin.round),
              )
            ],
          ),
        ),
      )),
    );
  }
}
