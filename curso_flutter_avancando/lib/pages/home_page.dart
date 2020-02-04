import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Feeds'),
        //Indica para a appBar que não deve ter o botão de voltar.
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child : RaisedButton(
          child: Text('Avançar'),
          onPressed: (){
            print('Vai a segunda página');
            //Navega para o rota nomeada.
            Navigator.pushNamed(context, 
              '/article'
            );
          },
        )
      ),
    );
  }
}