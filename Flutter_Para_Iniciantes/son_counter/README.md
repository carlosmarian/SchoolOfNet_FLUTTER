# son_counter

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.


Para abrir pagina, é necessário usar um complemento extendo, será usado o "url_launcher". Site: https://pub.dev/packages/url_launche

para isso deve add a depencia no "pubspec.yaml" 

url_launcher: ^5.4.1

e depois salvar que a IDE já vai executar o "flutter pub get"


Para efetuar o deploy deve ser verificada a documentação em: https://flutter.dev/docs/deployment/android

Basicamente tratar a permissão de internet e mudar o Labeld a aplicação.

Deve tbm ajustar os icons da aplicação

    add a dependencia : flutter_launcher_icons: ^0.7.4

    Gerar um icone: https://romannurik.github.io/AndroidAssetStudio/

Rodar o comando: flutter pub pub run flutter_launcher_icons:main

E gera os icones.

Ao final temos que assinar.

keytool -genkey -v -keystore ~/key.jks -storetype JKS -keyalg RSA -keysize 2048 -validity 10000 -alias key

