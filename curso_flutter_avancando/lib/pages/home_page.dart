import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Meus Artigos'),
      ),
      body: Center(
        child : RaisedButton(
          child: Text('Avan�ar'),
          onPressed: (){
            print('Vai a segunda p�gina');
          },
        )
      ),
    );
  }
}