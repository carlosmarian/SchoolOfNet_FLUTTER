import 'package:flutter/material.dart';

void main(){

  runApp(new MyApp());

}


class MyApp extends StatelessWidget{
  Widget build(BuildContext context){
    return new MaterialApp(
    title: 'SON contador de cursos',
    home: new HomeApp(),
  );
  }
}

class HomeApp extends StatefulWidget {
  @override
  _HomeAppState createState() => _HomeAppState();
}

class _HomeAppState extends State<HomeApp> {
  @override
  Widget build(BuildContext context) {
    return new Container(
      //Container pai
      color: Color.fromARGB(255, 0, 0, 0),
      //child : Aceita somente 1 item filho      
      child: Column(
        //Alinhamento centralizado na altura
        mainAxisAlignment: MainAxisAlignment.center,
        //Aceita inumeros filhos
        children: <Widget>[
          Text('Ola mundo teste', 
                textAlign: TextAlign.center, 
                style: TextStyle(color: Colors.blueAccent, decoration: TextDecoration.none),),
          Text('Novo teste 2', 
                textAlign: TextAlign.left, 
                style: TextStyle(color: Colors.greenAccent, fontSize: 30, decoration: TextDecoration.none))
        ],
      ),
    );
  }
}