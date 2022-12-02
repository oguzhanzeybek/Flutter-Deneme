// ignore_for_file: dead_code, unused_label

import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp( 
      debugShowCheckedModeBanner: false,
      title: "projem",
      theme: ThemeData(primarySwatch: Colors.cyan),
      
        
      
    );
    home : AnaSayfa();
  }
}

class AnaSayfa extends StatefulWidget {
  const AnaSayfa({super.key});

  @override
  State<AnaSayfa> createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text("Uçarak Gelsin",
        style: TextStyle(

          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.grey,




        ),
        
        
        ),
        
      ),
      body: Text("içerik1",style: TextStyle(color: Colors.white),),  


    );
  }
}