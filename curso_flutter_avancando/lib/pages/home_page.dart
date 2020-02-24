import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import './articles_page.dart';
import '../data/save_local.dart';

class HomePage extends StatefulWidget {
  
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _formKey = GlobalKey<FormState>();
  //Define um controle para ter acesso aos dados do campo de texto.
  final feedController = TextEditingController();

  //Declara a lista que será carregada no ListView
  //"https://blog.schoolofnet.com/feeds",
  List feeds = [];

  @override
  Widget build(BuildContext context) {
    //Instanciar a classe de persistência
    SaveLocal persistencia = new SaveLocal(feedList: feeds);

    
      //carrega em paralelo
      persistencia.read().then( (data) {
        //Carregar a lista, sempre usar setState
        setState(() {
          feeds = data;
        });
      });      
    
    return Scaffold(
      appBar: AppBar(
        title: Text('My Feeds'),
        //Indica para a appBar que não deve ter o botão de voltar.
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Form(
                key : _formKey,
                child: Column(
                  children: <Widget>[
                    //Para add uma lista é necessário usar o Expanded, ele posiciona a lista
                    Expanded(
                      child: ListView.builder(
                        //Atribui o tamanho da lisat baseado na lista
                        itemCount : feeds.length,
                        itemBuilder : (
                          context, 
                          index){
                            return ListTile(
                              //Coloca no titulo o conteudo do indice
                              title: Text(feeds[index]),
                              //Add um icone
                              leading: Icon(Icons.rss_feed),
                              //Adicionando a ação de click
                              onTap: (){
                                //Aki será add a ação do click  
                                print(index.toString());
                                Navigator.push(context, MaterialPageRoute(
                                  builder: (context) => ArticlePage(
                                        feed: feeds[index],
                                      )
                                    )
                                  );
                              },
                            );
                          }
                      ),
                    ),
                    TextFormField(
                      keyboardType: TextInputType.url,
                      //Relaciona o controle ao componente que queremos gerenciar.
                      controller: feedController,
                      decoration: InputDecoration(
                        labelText: 'Link do RSS',
                        hintText: 'url'
                      ),
                      validator: (value) {
                        //Efetua a valiação, retorna vazio caso esta ok ou a msg do erro.
                        if(value.isEmpty){
                          return "Este campo não pode ficar em branco";
                        }
                      },
                    ),
                    RaisedButton(
                      child: Text('Cadastrar'),
                      color: Colors.blue,
                      textColor: Colors.white,
                      onPressed: (){
                        //Para aplicar a validação dos campos, é necessário solicitar um validate ao status do form
                        if(_formKey.currentState.validate()){
                          print(feedController.text);
                          //Atribuindo o valor do campo texto na lista, sempre usar o setState
                          setState(() {                            
                            feeds.add(feedController.text);
                            //Persisitir a lista
                            persistencia.save(feeds);

                            feedController.text = '';
                          });
                        }
                      },
                    )
                  ],
                )
              ),
        )
    );
  }
}