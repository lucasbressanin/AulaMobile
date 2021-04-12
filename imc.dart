import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Navegação Básica',
    theme: new ThemeData(scaffoldBackgroundColor: const Color(0xFF0D47A1)),
    home: PrimeiraRota(),
  ));
}

class PrimeiraRota extends StatelessWidget {
  final altura = TextEditingController();
  final peso = TextEditingController();
  String valorAltura = "";
  String resultado = "0.00";

  String resultadoIMC(double IMC) {
    if (IMC < 18.5) {
      return "Magreza";
    } else if (IMC > 18.5 && IMC <= 25) {
      return "Peso Normal";
    } else if (IMC > 25 && IMC <= 30) {
      return "Sobrepeso";
    } else if (IMC > 30 && IMC <= 35) {
      return "Obesidade Grau I";
    } else if (IMC > 35 && IMC <= 40) {
      return "Obesidade Grau II";
    } else {
      return "Obesidade Grau III";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.attach_money),
            tooltip: "Menu",
            onPressed: null,
          ),
          title: Text("IMC",
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.white)),
          centerTitle: true,
          backgroundColor: Colors.indigo[900],
        ),
        body: Column(children: [
          SizedBox(
            height: 40,
          ),
          Image.network(
            'https://uploads-ssl.webflow.com/5bae826a1af2ce271015dc02/5c0d868b36137d8656dd4ecf_conferir%20medidas%402x.png',
            width: 300,
            height: 150,
          ),
          Text("CALCULO IMC",
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
                        controller: altura,
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
                          labelText: 'Insira a Altura (Metros)',
                        )),
                    SizedBox(
                      height: 10,
                    ),
                    TextField(
                        controller: peso,
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
                          labelText: 'Insira o Peso (kg)',
                        )),
                    SizedBox(
                      height: 30,
                    ),
                    FlatButton(
                      child: Text("Calcular"),
                      color: Colors.yellow[700],
                      onPressed: () {
                        final alturaTotal = double.parse(altura.text) *
                            double.parse(altura.text);
                        valorAltura = "$alturaTotal";

                        final calculoIMC = double.parse(peso.text) /
                            double.parse("$valorAltura");
                        resultado = resultadoIMC(calculoIMC);

                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  SegundaRota('$resultado', calculoIMC)),
                        );
                      },
                      textColor: Colors.white,
                    )
                  ])),
        ]));
  }
}

class SegundaRota extends StatelessWidget {
  final String resultado;
  final double calculoIMC;

  SegundaRota(this.resultado, this.calculoIMC);

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
            'https://uploads-ssl.webflow.com/5bae826a1af2ce271015dc02/5c0d868b36137d8656dd4ecf_conferir%20medidas%402x.png',
            width: 300,
            height: 150,
          ),
          SizedBox(
            height: 40,
          ),
          Center(
            child: Text(
                "Resultado: ${calculoIMC.toStringAsFixed(3)}\n\n\nConclusão: $resultado",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Colors.white)),
          )
        ]));
  }
}
