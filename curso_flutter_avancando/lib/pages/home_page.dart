import 'package:flutter/material.dart';
import './articles_page.dart';

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
        //Indica para a appBar que n�o deve ter o bot�o de voltar.
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child : RaisedButton(
          child: Text('Avan�ar'),
          onPressed: (){
            print('Vai a segunda p�gina');
            //Adiciona um item na pilha de navega��o.
            Navigator.push(
              context, 
              MaterialPageRoute(builder: (context) => ArticlePage())
            );
          },
        )
      ),
    );
  }
}