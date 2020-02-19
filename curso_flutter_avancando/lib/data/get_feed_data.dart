import 'dart:async';
import 'package:xml/xml.dart' as xml;
import 'package:http/http.dart' as http;

class GetFreedData {

  Future<List> read({String url}) async {
    //Requisição html
    http.Client client  = http.Client();
    dynamic data = await client.get(url);

    //Convertendo o conteudo string do retorno da requisição em XML.
    xml.XmlDocument rss = xml.parse(data.body);

    List articles = [];

    //Varrer todos os elementos com nome "item"
    rss.findAllElements('item').forEach((node) => {
      //Data cada No item, add o artigo com o titulo e o link
      articles.add({
        'title' : node.findElements('title').single.text,
        'link' : node.findElements('link').single.text
        })
    });

    return articles;

  }

}