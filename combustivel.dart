import 'package:flutter/material.dart';

void main() async {
  runApp(MaterialApp(
    theme: new ThemeData(scaffoldBackgroundColor: const Color(0xFF616161)),
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final gasolina = TextEditingController();
  final alcool = TextEditingController();
  String valorgasolina = "";
  double resultado = 0.0;

  String resultadoCalc(double resultado) {
    if (resultado > 0.7) {
      return "Gasolina é Melhor";
    } else {
      return "Alcool é Melhor";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[850],
        shadowColor: Colors.grey[850],
        title: Text("Calculo Combustivel"),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            Image.network(
              'https://fdr.com.br/wp-content/uploads/2020/10/gasolina-4.webp',
              width: 300,
              height: 150,
            ),
            SizedBox(
              height: 30,
            ),
            Text("CALCULADORA",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 47,
                    color: Colors.white)),
            SizedBox(
              height: 30,
            ),
            TextField(
                controller: gasolina,
                textAlign: TextAlign.center,
                keyboardType: TextInputType.numberWithOptions(decimal: true),
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(120.0),
                    ),
                  ),
                  labelStyle: TextStyle(fontSize: 20, color: Colors.white),
                  labelText: 'Valor da Gasolina',
                )),
            SizedBox(
              height: 30,
            ),
            TextField(
                controller: alcool,
                textAlign: TextAlign.center,
                keyboardType: TextInputType.numberWithOptions(decimal: true),
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(120.0),
                    ),
                  ),
                  labelStyle: TextStyle(fontSize: 20, color: Colors.white),
                  labelText: 'Valor do Alcool',
                )),
            SizedBox(
              height: 30,
            ),
            FlatButton(
              child: Text("Calcular"),
              color: Colors.deepOrange,
              onPressed: () {
                setState(() {
                  resultado =
                      double.parse(alcool.text) / double.parse(gasolina.text);
                });
              },
              textColor: Colors.white,
            ),
            SizedBox(
              height: 40.0,
            ),
            Text("$resultado" "$resultadoCalc",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold))
          ],
        ),
      ),
    );
  }
}
