import 'package:flutter/material.dart';

class ArticlePage extends StatefulWidget {
  @override
  _ArticlePageState createState() => _ArticlePageState();
}

class _ArticlePageState extends State<ArticlePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title : Text('Lista de artigos')
      ),
      body: Center(
        child: RaisedButton(
          onPressed: (){
            print('Avança novamente');
            //Navega para a rota nomeada
            Navigator.pushNamed(
              context, 
              '/page3');
          }, 
          child: Text('Avaçar')
        )
      ),
    );
  }
}