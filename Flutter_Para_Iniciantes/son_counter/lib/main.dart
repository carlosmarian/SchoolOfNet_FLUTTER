import 'package:flutter/material.dart';

void main(){

  runApp(new MaterialApp(
    title: 'SON contador de cursos',
    home: new Container(
      //Container pai
      color: Color.fromARGB(255, 255, 255, 255),
      //child : Aceita somente 1 item filho      
      child: Column(
        //Alinhamento centralizado na altura
        mainAxisAlignment: MainAxisAlignment.center,
        //Aceita inumeros filhos
        children: <Widget>[
          Text('Olá mundo', textAlign: TextAlign.center,),
          Text('Novo teste 2', textAlign: TextAlign.left)
        ],
      ),
    )
  ));

}