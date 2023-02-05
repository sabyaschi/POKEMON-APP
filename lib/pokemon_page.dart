import 'package:flutter/material.dart';

class Pokemonpage extends StatelessWidget {
  const Pokemonpage(
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
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(pokemonName),
      ),
      body: Column(
        
        children: [
          AspectRatio(
            aspectRatio: 1 / 1,
            child: Container(
              height: 30,
              width: 30,
              child: Image.network(
                imgUrl,
              ),
            ),
          ),
          Text(
            pokemonName,
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 8.0),
            child: Text(
              pokemonDesc,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500,color: Colors.white),
            ),
          ),
          SizedBox(
            height: 50,
            width: 155,
            child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey.withOpacity(0.5)),
                child: Text(
                  "More Info",
                  style: TextStyle(fontSize: 20,color: Colors.white),
                )),
          )
        ],
      ),
    );
  }
}
