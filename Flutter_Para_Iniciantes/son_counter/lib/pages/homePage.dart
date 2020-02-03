import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _cursos = 0;
  int _selectedImage = 0;

  var _images = [
    'images/1.png',
    'images/2.png',
    'images/3.png',
    'images/4.png',
    'images/5.png',
    'images/6.png'
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
          //Alinhamento centralizado na altura
          mainAxisAlignment: MainAxisAlignment.center,
          //Aceita inumeros filhos
          children: <Widget>[
            Image.asset(_images[_selectedImage], height: 100.0,),
            Text('Cursos', 
                  textAlign: TextAlign.center, 
                  style: Theme.of(context).textTheme.display4,),
            Text('Voc� completou $_cursos', 
                  textAlign: TextAlign.left, 
                  style: Theme.of(context).textTheme.display1.copyWith(fontWeight:  FontWeight.w300),),
                  Padding(
                    padding: EdgeInsets.all(30),
                    child: FloatingActionButton(onPressed: (){
                      setState(() {
                        _cursos++;
                        
                        var selectedImage = _cursos ~/ 2;

                        if(selectedImage <= 4){
                          _selectedImage = selectedImage;
                        }

                        if(selectedImage > 4){
                          _selectedImage = 5;
                        }
                      });
                    },
                    child: Icon(Icons.add),),
                  )
          ],
        );
  }
}