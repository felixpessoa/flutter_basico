import 'package:flutter/material.dart';
import 'package:flutter_basico/pages/hello_page1.dart';
import 'package:flutter_basico/pages/hello_page2.dart';
import 'package:flutter_basico/pages/hello_page3.dart';

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
      body: _body(context),
    );
  }

  _body(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _text(),
          _pageView(),
          _buttons(context),
        ],
      ),
    );
  }

  _pageView() {
    return Container(
      margin: EdgeInsets.only(top: 20, bottom: 20),
      height: 300,
      child: PageView(
        children: [
          _img("assets/img/dog1.png"),
          _img("assets/img/dog2.png"),
          _img("assets/img/dog3.png"),
          _img("assets/img/dog4.png"),
          _img("assets/img/dog5.png"),
        ],
      ),
    );
  }

  _buttons(context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _button(context, "ListView", () => _OnClickNavigator(context, HelloPage1())),
            _button(context, "Page 2", () => _OnClickNavigator(context, HelloPage2())),
            _button(context, "Page 3", () => _OnClickNavigator(context, HelloPage3())),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _button(context, "Snack", _OnClickSnack),
            _button(context, "Dialog", _onClickDialog),
            _button(context, "Toast", _onClickToast),
          ],
        )
      ],
    );
  }

  void _OnClickNavigator(BuildContext context, Widget page) {
    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
      return page;
    }));
  }

  _OnClickSnack() {
  }

  _onClickDialog() {
  }

  _onClickToast() {
  }

  _button(BuildContext context, String text, Function onPressed) {
    return RaisedButton(
      color: Colors.blue,
      child: Text(
        text,
        style: TextStyle(
          color: Colors.white,
          fontSize: 20,
        ),
      ),
      onPressed: () => onPressed,
    );
  }

  

  _img(String img) {
    // ( .asset pega imagem do assets / .network pega imagem da URL / .file pega imagem de um arquivo.
    return Container(
      margin: EdgeInsets.only(top:10, bottom: 10),
      child: Image.asset(
        img,
        fit: BoxFit.cover,
      ),
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


