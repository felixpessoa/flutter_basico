import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Hello Flutter",
        ),
        centerTitle: true,
      ),
      body: _body(),
    );
  }

  _body() {
    return Container(
      //margin: const EdgeInsets.only(left: 10, top: 10),
      color: Colors.yellow,
      child: Row(
        // mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          _button(),
          _button(),
          _button(),
          _button(),
        ],
      ),
    );
  }


  _button() {
    return RaisedButton(
      color: Colors.blue,
      child: Text(
        "Ok",
        style: TextStyle(
          color: Colors.white,
          fontSize: 30,
        ),
      ),
      onPressed: () => _OnClickOk,
    );
  }

  void _OnClickOk() {
    print("Clicou no botão!");
  }

  _img() {
    // ( .asset pega imagem do assets / .network pega imagem da URL / .file pega imagem de um arquivo.
    return Image.asset(
      "assets/img/dog4.png",
      fit: BoxFit.cover,
      /*width: 300,
        height: 300,
        fit: BoxFit.cover,*/
    );
  }

  _text() {
    return Text(
      "Hello World",
      style: TextStyle(
        fontSize: 30,
        color: Colors.blue,
        fontWeight: FontWeight.bold,
        fontStyle: FontStyle.italic,
        decoration: TextDecoration.underline,
        decorationColor: Colors.red,
        decorationStyle: TextDecorationStyle.wavy,
      ),
    );
  }
}
