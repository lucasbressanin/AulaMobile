import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Olá Flutter 2",
    theme: new ThemeData(scaffoldBackgroundColor: const Color(0xFF000000)),
    home: Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu),
          tooltip: "Menu",
          onPressed: null,
        ),
        title: Text("Vinicius",
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.red)),
        centerTitle: true,
        backgroundColor: Colors.black,
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            tooltip: 'Buscar',
            onPressed: null,
          ),
          IconButton(
            icon: Icon(Icons.add),
            tooltip: 'Buscar',
            onPressed: null,
          ),
        ],
      ),
      body: Column(
        children: [
          SizedBox(height: 15.0),
          Image.network(
            'https://i.imgur.com/QCWLKOj.jpg',
            width: 400,
            height: 400,
          ),
          SizedBox(height: 15.0),
          Text("Dois",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.red,
                  fontSize: 25.0)),
          SizedBox(height: 15.0),
          Text(
            "Você não me deixa em duvida, nem mesmo quando vai embora \n -é a certeza da sua volta que me faz permanecer",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.red,
            ),
          ),
          SizedBox(height: 15.0),
          Text("Voce me fez querer!",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.red,
                  fontSize: 25.0)),
          SizedBox(height: 15.0),
          Text(
            "pela forma que me fazia bem, pela sensação de arrepio quando sentia seu cheiro, o retroagir da pele ao seu toque, você me fez querer por ser você, até que deixou de ser...",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.red,
            ),
          ),
          SizedBox(height: 15.0),
          Row(children: [
            Icon(Icons.favorite),
          ])
        ],
      ),
    ),
  ));
}
