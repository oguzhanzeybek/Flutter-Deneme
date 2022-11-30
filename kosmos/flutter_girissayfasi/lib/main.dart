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
            const SizedBox(
              height: 39.0,
            ),
            // ignore: prefer_const_constructors
            Center(child: flutterLogo),
            const SizedBox(
              height: 18.0,
            ),
            const Text(
              "Flutter Team",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic),
            ),
            const SizedBox(
              height: 30.0,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                

                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      child: Text(
                        "mail ile giriş",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.0,
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.w400),
                      ),
                      width: double.infinity,
                      height: 28.0,
                      decoration: BoxDecoration(
                        color: Colors.deepPurpleAccent,
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    Row(
                      children: [
                        Text("mail ve facebook ile giriş butonu"),
                      ],
                    ),
                  ],
                ),

                //padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20) ,
                //padding: EdgeInsets.all(10.0),
                //margin: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                //margin: EdgeInsets.all(10.0),
                alignment: const Alignment(0, -0.6),
                width: MediaQuery.of(context).size.width - 40,
                height: 159.0,
                color: Colors.white70,

                //padding: EdgeInsets.all(40.0),
                //  width: 1800.0,
                // height: 1350.0,
                // color: Colors.blueGrey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
