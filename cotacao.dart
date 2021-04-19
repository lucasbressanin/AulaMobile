import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Navegação Básica',
    theme: new ThemeData(scaffoldBackgroundColor: const Color(0xFF009614)),
    home: PrimeiraRota(),
  ));
}

class PrimeiraRota extends StatelessWidget {
  final valorReal = TextEditingController();
  double valorDolar = 0.0;
  double valorEuro = 0.0;
  double valorBitCoin = 0.0;
  String valorRealFinal = "0.0";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.attach_money),
            tooltip: "Menu",
            onPressed: null,
          ),
          title: Text("CAMBIO",
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.white)),
          centerTitle: true,
          backgroundColor: Colors.orange,
        ),
        body: Column(children: [
          SizedBox(
            height: 40,
          ),
          Image.network(
            'https://image.flaticon.com/icons/png/512/1553/1553497.png',
            width: 300,
            height: 150,
          ),
          Text("COTAÇÃO",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 47,
                  color: Colors.white)),
          Container(
              padding: EdgeInsets.all(90),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    TextField(
                        controller: valorReal,
                        textAlign: TextAlign.center,
                        keyboardType:
                            TextInputType.numberWithOptions(decimal: true),
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(120.0),
                            ),
                          ),
                          labelStyle:
                              TextStyle(fontSize: 20, color: Colors.white),
                          labelText: 'R\$ Valor a Converter - Real',
                        )),
                    SizedBox(
                      height: 30,
                    ),
                    FlatButton(
                      child: Text("Calcular"),
                      color: Colors.yellow[700],
                      onPressed: () {
                        valorRealFinal = "$valorReal";
                        valorDolar = double.parse(valorRealFinal) * 5.73;
                        valorEuro = double.parse(valorRealFinal) * 6.83;
                        valorBitCoin = double.parse(valorRealFinal) * 344140.99;

                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SegundaRota(valorRealFinal,
                                  valorDolar, valorEuro, valorBitCoin)),
                        );
                      },
                      textColor: Colors.white,
                    )
                  ])),
        ]));
  }
}

class SegundaRota extends StatelessWidget {
  final String valorRealFinal;
  final double valorDolar;
  final double valorEuro;
  final double valorBitCoin;

  SegundaRota(
      this.valorRealFinal, this.valorDolar, this.valorEuro, this.valorBitCoin);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Resultado"),
        ),
        body: Column(children: [
          SizedBox(
            height: 40,
          ),
          Image.network(
            'https://image.flaticon.com/icons/png/512/1553/1553497.png',
            width: 300,
            height: 150,
          ),
          SizedBox(
            height: 40,
          ),
          Center(
            child: Text(
                "Resultado: $valorRealFinal \n $valorDolar \n $valorEuro \n $valorBitCoin",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Colors.white)),
          )
        ]));
  }
}
