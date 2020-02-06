import 'package:curso_flutter_avancando/pages/articles_page.dart';
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
        //Indica para a appBar que não deve ter o botão de voltar.
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child : RaisedButton(
          child: Text('Avançar'),
          onPressed: (){
            print('Vai a segunda página');
            Navigator.push(
              context, 
              MaterialPageRoute(
                builder: (context)=>ArticlePage(feed: 'https:google.com.br')
              ));
            //Navega para o rota nomeada.
            /*
            Navigator.pushNamed(context, 
              '/article'
            );*/
          },
        )
      ),
    );
  }
}