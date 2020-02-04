import './home_page.dart';
import 'package:flutter/material.dart';

class Page3Page extends StatefulWidget {
  @override
  _Page3PageState createState() => _Page3PageState();
}

class _Page3PageState extends State<Page3Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title : Text('Page 3')
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              onPressed: (){
                print('Avança novamente');
                Navigator.push(
                  context, 
                  MaterialPageRoute(
                    builder: (context) => HomePage()
                  )
                );
              }, 
              child: Text('Voltar para Home')
            ),
            RaisedButton(
              onPressed: (){
                print('Voltar Pagina');
                //remove o ultimo item da pilha de navegação
                Navigator.pop(context);
              }, 
              child: Text('Voltar')
            )
          ],
        )
      ),
    );
  }
}