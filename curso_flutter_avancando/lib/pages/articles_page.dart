import 'package:flutter/material.dart';
import '../data/get_feed_data.dart';

class ArticlePage extends StatefulWidget {
  final String feed;
  

  ArticlePage({Key key, this.feed}) : super(key: key);

  @override
  _ArticlePageState createState() => _ArticlePageState(this.feed);
}

class _ArticlePageState extends State<ArticlePage> {
  final String feed;
  Future<List> articles;

  _ArticlePageState(this.feed);

  @override
  Widget build(BuildContext context) {
    GetFreedData rss = new GetFreedData();

    articles = rss.read(url: this.feed);

    return Scaffold(
      appBar: AppBar(
        title : Text('Lista de artigos')
      ),
      body: FutureBuilder(
        future: articles,
        builder: (context, snapshot){
          switch(snapshot.connectionState){
            case ConnectionState.none:
            case ConnectionState.waiting:
              return messageTemplate(icon: Icons.refresh, title:  'Carregando lista de artigos');
            default:
              //verifica se tem erro
              if(snapshot.hasError)
                return messageTemplate(icon: Icons.error, title:  'Não foi possível carregar: '+ snapshot.error.toString());

              return messageTemplate(icon: Icons.done,title:  'Lista de artigos carregada');
          }
        },
      ),
    );
  }

  messageTemplate({String title, IconData icon}){
    return Center(
    child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget> [
          Icon(icon, size: 60,),
          Text(title)
        ],
        ),
    );
  }
}