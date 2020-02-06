import 'package:flutter/material.dart';

class ArticlePage extends StatefulWidget {
  final String feed;
  

  ArticlePage({Key key, this.feed}) : super(key: key);

  @override
  _ArticlePageState createState() => _ArticlePageState(this.feed);
}

class _ArticlePageState extends State<ArticlePage> {
  final String feed;

  _ArticlePageState(this.feed);

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
            /*
            Navigator.pushNamed(
              context, 
              '/page3');
              */
          }, 
          child: Text(this.feed)
        )
      ),
    );
  }
}