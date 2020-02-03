import 'package:flutter/material.dart';

class SchoolPage extends StatefulWidget {
  @override
  _SchoolPageState createState() => _SchoolPageState();
}

class _SchoolPageState extends State<SchoolPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text('Visite:', textAlign: TextAlign.center,),
        RaisedButton(
          child: Text('schoolofnet.com.br', textAlign: TextAlign.center),
        )
      ],
    );
  }
}