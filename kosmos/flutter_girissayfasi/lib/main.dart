import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

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
        primaryColorLight: Colors.cyanAccent,
      ),
      home: const girissayfasi(),
    );
  }
}

class girissayfasi extends StatelessWidget {
  const girissayfasi({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    var flutterLogo = FlutterLogo(
      size: 135.0,
    );
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColorLight,
      // ignore: prefer_const_literals_to_create_immutables
      body: Container(
        
        child: Column(
          
        
          children: <Widget>[
            SizedBox(height: 39.0,),
            // ignore: prefer_const_constructors
            Center(child: flutterLogo),
            SizedBox(height: 18.0,),
            const Text(
              "Flutter Team",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic),
            ),
          ],
        ),
      ),
    );
  }
}
