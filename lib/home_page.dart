import 'package:flutter/material.dart';
import 'package:flutter_basico/pages/hello_listview.dart';
import 'package:flutter_basico/pages/hello_page1.dart';
import 'package:flutter_basico/pages/hello_page2.dart';
import 'package:flutter_basico/pages/hello_page3.dart';
import 'package:flutter_basico/utils/nav.dart';
import 'package:flutter_basico/widgets/blue_button.dart';

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
            BlueButton("ListView",
                onPressed: () => _onClickNavigator(context, HelloListView())),
            BlueButton("Page 2",
                onPressed: () => _onClickNavigator(context, HelloPage2())),
            BlueButton("Page 3",
                onPressed: () => _onClickNavigator(context, HelloPage3())),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            BlueButton("Snack", onPressed: _OnClickSnack),
            BlueButton("Dialog", onPressed: _onClickDialog),
            BlueButton("Toast", onPressed: _onClickToast),
          ],
        )
      ],
    );
  }

  

  void _onClickNavigator(BuildContext context, Widget page) async {
    String   s = await push(context, page);
   
    print(">> $s");
  }

  void _onClickOk(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
      return HelloPage3();
    }));
  }

  _OnClickSnack() {}

  _onClickDialog() {}

  _onClickToast() {}

  _img(String img) {
    // ( .asset pega imagem do assets / .network pega imagem da URL / .file pega imagem de um arquivo.
    return Container(
      margin: EdgeInsets.only(top: 10, bottom: 10),
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
