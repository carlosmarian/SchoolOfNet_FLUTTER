import 'package:flutter/material.dart';
import './pages/home_page.dart';
import './pages/articles_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Feeds Reader',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //home: HomePage(),
      //Definindo rotas nomeadas.
      initialRoute: '/',
      //Monta a lista de rotas
      routes: {
        '/' : (context) => HomePage(),
        '/article' : (context) => ArticlePage(),
        //'/page3' : (context) => Page3Page(),
      },
    );
  }
}