import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _cursos = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
          //Alinhamento centralizado na altura
          mainAxisAlignment: MainAxisAlignment.center,
          //Aceita inumeros filhos
          children: <Widget>[
            Image.asset('images/1.png', height: 100.0,),
            Text('Cursos', 
                  textAlign: TextAlign.center, 
                  style: Theme.of(context).textTheme.display4,),
            Text('Você completou $_cursos', 
                  textAlign: TextAlign.left, 
                  style: Theme.of(context).textTheme.display1.copyWith(fontWeight:  FontWeight.w300),),
                  Padding(
                    padding: EdgeInsets.all(30),
                    child: FloatingActionButton(onPressed: (){
                      setState(() {
                        _cursos++;
                      });
                    },
                    child: Icon(Icons.add),),
                  )
          ],
        );
  }
}