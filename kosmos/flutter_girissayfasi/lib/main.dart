import 'dart:math';

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
        primaryColorLight: Colors.cyanAccent,
      ),
      home: const girissayfasi(),
    );
  }
}

// ignore: camel_case_types
class girissayfasi extends StatelessWidget {
  const girissayfasi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColorLight,
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            Container(
              width: 120,
              height: 120,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20000),
                  image:
                      DecorationImage(image: AssetImage("assets/resim1.jpg",), fit: BoxFit.cover, ),),
            ),
            const SizedBox(
              height: 23,
            ),
            const Text(
              "Fisandun",
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                color: Colors.deepPurple,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Material(
              borderRadius: BorderRadius.circular(100.0),
              elevation: 40,
              child: Container(
                // ignore: sort_child_properties_last
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Material(
                          borderRadius: BorderRadius.circular(100.0),
                          elevation: 40,
                          child: Container(
                            alignment: Alignment.center,
                            width: double.infinity,
                            height: 52.0,
                            decoration: BoxDecoration(
                              gradient: const LinearGradient(colors: [
                                Colors.pink,
                                Colors.cyan,
                              ]),
                              color: Colors.purpleAccent,
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            child: const Text(
                              "Kullanıcı adı ile giriş",
                              style: TextStyle(
                                fontStyle: FontStyle.italic,
                                fontSize: 23.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: Material(
                                elevation: 40,
                                borderRadius: BorderRadius.circular(100.0),
                                child: Container(
                                  alignment: Alignment.center,
                                  height: 52.0,
                                  decoration: BoxDecoration(
                                    gradient: const LinearGradient(colors: [
                                      Colors.indigo,
                                      Colors.indigoAccent,
                                    ]),
                                    color: Colors.purpleAccent,
                                    borderRadius: BorderRadius.circular(100.0),
                                  ),
                                  child: const Text(
                                    "Mail ile giriş",
                                    style: TextStyle(
                                      fontStyle: FontStyle.italic,
                                      fontSize: 19.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            Expanded(
                              child: Material(
                                elevation: 40,
                                borderRadius: BorderRadius.circular(100.0),
                                child: Container(
                                  alignment: Alignment.center,
                                  height: 52.0,
                                  decoration: BoxDecoration(
                                    gradient: const LinearGradient(colors: [
                                      Colors.purple,
                                      Colors.purpleAccent,
                                    ]),
                                    color: Colors.purpleAccent,
                                    borderRadius: BorderRadius.circular(100.0),
                                  ),
                                  child: const Text(
                                    "Facebook ile giriş",
                                    style: TextStyle(
                                      fontStyle: FontStyle.italic,
                                      fontSize: 19.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ]),
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.topCenter,
                      colors: [
                        Color.fromARGB(255, 230, 116, 250),
                        Color.fromARGB(255, 6, 223, 251),
                      ]),
                  color: Colors.purpleAccent,
                  borderRadius: BorderRadius.circular(20.0),
                ),
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width - 80,
                height: 200,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
