import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.cyan,
        ),
        home: Scaffold(
          appBar: AppBar(),
          body: Center(
            child: Column(children:<Widget>  [
              kimlik("Oguzhan"," Zeybek", 21),
              kimlik("bilal"," kar", 21),
              kimlik("Oguzhan"," senuysal", 21),
              kimlik("tunahan","kozan", 21),

            ],),
          )
        ));
  }
}

class kimlik extends StatelessWidget {
  final String isim;
  final String soyad;
  final int yas;
  kimlik(this.isim,this.soyad,this.yas);
  @override
  Widget build(BuildContext context) {
    return Text("isim: $isim soyisim: $soyad yas: $yas");
  }
}
