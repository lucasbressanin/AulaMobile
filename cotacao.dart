import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      title: "Cotacao Cambio",
      theme: new ThemeData(scaffoldBackgroundColor: const Color(0xFF009614)),
      home: Scaffold(
          appBar: AppBar(
            leading: IconButton(
              icon: Icon(Icons.attach_money),
              tooltip: "Menu",
              onPressed: null,
            ),
            title: Text("CAMBIO",
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.white)),
            centerTitle: true,
            backgroundColor: Colors.orange,
          ),
          body: Column(children: [
            Image.network(
              'https://cdn.spacemoney.com.br/upload/dn_arquivo/2019/11/Cambio_viagem.png',
            ),
            SizedBox(
              height: 30,
            ),
            Text("COTAÇÃO",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Colors.blue)),
            Container(
                padding: EdgeInsets.all(90),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      TextField(
                          textAlign: TextAlign.center,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(120.0),
                              ),
                            ),
                            labelText: 'R\$ Valor a Converter',
                          ))
                    ])),
          ])),
    ));
