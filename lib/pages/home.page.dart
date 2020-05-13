import 'package:alcool_gasolina/widgets/logo.widget.dart';
import 'package:alcool_gasolina/widgets/submit.widget.dart';
import 'package:alcool_gasolina/widgets/sucess.widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';

class HomePage extends StatelessWidget {
  var _gasCtrl = new MoneyMaskedTextController(leftSymbol: 'R\$ ');
  var _alcCtrl = new MoneyMaskedTextController(leftSymbol: 'R\$ ');
  var _busy = false;
  var _completed = false;
  var _resultText = "Compensa utilizar álcool";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: ListView(children: <Widget>[
        Logo(),
        _completed
            ? Sucess(
                result: _resultText,
                reset: () {},
              )
            : SubmitForm(
                alcCtrl: _alcCtrl,
                gasCtrl: _gasCtrl,
                submitFunc: () {},
                busy: false,
              ),
      ]),
    );
  }

  Future calculate() {
    double alc = double.parse(
          _alcCtrl.text.replaceAll(new RegExp(r'[,.]'), ''),
        ) /
        100;
    double gas = double.parse(
          _gasCtrl.text.replaceAll(new RegExp(r'[,.]'), ''),
        ) /
        100;
    double res = alc / gas;
  }
}
