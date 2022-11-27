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
      debugShowCheckedModeBanner: false,
      title: 'PROJEM',
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
      home: const deneme(),
    );
  }
}
// ignore: camel_case_types
class deneme extends StatelessWidget {
  const deneme({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(),
      body: const yeni(),
    );
  }
}

// ignore: camel_case_types
class yeni extends StatelessWidget {
  const yeni({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: (){

      Scaffold.of(context).showBottomSheet((context) => const Text("NAAAABERRRRRRRRRRRRRRRRRRRRRRRRRRRRRRR",style:TextStyle( color: Colors.blue),),);
    }, child: const Text("EVEEET AYNEN OYLE"),

    );
  }
}