import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
          //Alinhamento centralizado na altura
          mainAxisAlignment: MainAxisAlignment.center,
          //Aceita inumeros filhos
          children: <Widget>[
            Text('Hello Word Flutter', 
                  textAlign: TextAlign.center, 
                  style: TextStyle(color: Colors.blueAccent, decoration: TextDecoration.none),),
            Text('Animado com esse fera', 
                  textAlign: TextAlign.left, 
                  style: TextStyle(color: Colors.greenAccent, fontSize: 30, decoration: TextDecoration.none))
          ],
        );
  }
}