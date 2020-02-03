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
    return Scaffold( 
      appBar: AppBar(
        title: Text('School of NET'),
        backgroundColor: Colors.lightGreenAccent,
        ),
      body: Container(
        //Container pai
        //Ocupar todo o conteudo do BODY
        constraints: BoxConstraints.expand(),
        //child : Aceita somente 1 item filho      
        child: Column(
          //Alinhamento centralizado na altura
          mainAxisAlignment: MainAxisAlignment.center,
          //Aceita inumeros filhos
          children: <Widget>[
            Text('Hello Word Flutter', 
                  textAlign: TextAlign.center, 
                  style: TextStyle(color: Colors.blueAccent, decoration: TextDecoration.none),),
            Text('Animado com esse fera', 
                  textAlign: TextAlign.left, 
                  style: TextStyle(color: Colors.greenAccent, fontSize: 30, decoration: TextDecoration.none))
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('Home')),
          BottomNavigationBarItem(icon: Icon(Icons.arrow_back), title: Text('Voltar'))
        ], fixedColor: Colors.lightGreenAccent,),
     );
  }
}