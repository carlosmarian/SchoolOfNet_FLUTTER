import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SchoolPage extends StatefulWidget {
  @override
  _SchoolPageState createState() => _SchoolPageState();
}

class _SchoolPageState extends State<SchoolPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text('Visite:', 
          textAlign: TextAlign.center, 
          style: Theme.of(context).textTheme.display3,),
        RaisedButton(
          child: Text('schoolofnet.com.br', textAlign: TextAlign.center),
          onPressed: (){
            //Ação de visitar uma pagina no navegador
            launch('https://www.schoolofnet.com');
          },
        )
      ],
    );
  }
  
}

