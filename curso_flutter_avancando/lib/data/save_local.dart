import 'dart:io';
import 'dart:convert';
import 'package:path_provider/path_provider.dart';

//Classe que vai persistir
class SaveLocal{
  final List feedList;

  //Injetando a variavel
  SaveLocal({this.feedList});

  Future<File> get fileFeed async {
    //OBS: getApplicationDocumentsDirectory é assincrono, por isso usamos await
    Directory dir = await getApplicationDocumentsDirectory();

    File file = File(dir.path + '/feeds.json');

    if(!file.existsSync()){
      file.createSync();
      //Salva aguardando
      await save(fileFeed);
    }
    return file;
  }

  read() async{
    //Acessar o arquivo de persistencia
    final File file = await fileFeed;

    //readAsStringSync => Retorna o conteudo do arq como uma string
    String data = file.readAsStringSync();

    //Converte para json o conteudo do arquivo
    if(data == ""){
      return [];
    }
    return json.decode(data);
  }

  save(data) async{
    //Acessar o arquivo de persistencia
    final File file = await fileFeed;

    file.writeAsStringSync( json.encode(data) );
  }
}