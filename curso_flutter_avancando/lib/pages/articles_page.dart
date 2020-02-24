import 'package:flutter/material.dart';
import '../data/get_feed_data.dart';
import 'package:url_launcher/url_launcher.dart';

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
        title : Text('Lista de artigos'),
        leading: Icon(Icons.rss_feed),
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

              return listArticles(snapshot.data);
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_back),
        onPressed: (){
          Navigator.pop(context);
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

  listArticles(List _articles){
    return Column(children: <Widget>[
Expanded(
      child: ListView.builder(
        itemCount: _articles.length, 
        itemBuilder: (context, index){
          return ListTile(
            title: Text(_articles[index]['title']),
            subtitle: Text(_articles[index]['link']),
            leading: Icon(Icons.open_in_browser),
            onTap: () async{
              print(_articles[index]['link']);
              String url = _articles[index]['link'];
              canLaunch(url).then((isConfirm){
                if (isConfirm) {
                  launch(url);
                } else {
                  throw 'Could not launch $url';
                }
              });
            },
          );
        }),
      ),
    ],
    );
  }
}