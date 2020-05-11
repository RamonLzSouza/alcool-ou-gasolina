import 'package:alcool_gasolina/widgtes/input.widgets.dart';
import 'package:alcool_gasolina/widgtes/logo.widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Alcool ou Gasolina',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  var _gasCtrl = new MoneyMaskedTextController(leftSymbol: 'R\$ ');
  var _alcCtrl = new MoneyMaskedTextController(leftSymbol: 'R\$ ');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: ListView(children: <Widget>[
        Logo(),
        Input(
          ctrl: _gasCtrl,
          label: "Gasolina",
        ),
        Input(
          ctrl: _alcCtrl,
          label: "Álcool",
        ),
        Container(
          margin: EdgeInsets.all(30),
          height: 60,
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.8),
            borderRadius: BorderRadius.circular(60),
          ),
          child: FlatButton(
            child: Text(
              "CALCULAR",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Theme.of(context).primaryColor,
                fontSize: 35,
                fontFamily: "Big Shoulders Display",
              ),
            ),
            onPressed: () {},
          ),
        ),
      ]),
    );
  }
}
