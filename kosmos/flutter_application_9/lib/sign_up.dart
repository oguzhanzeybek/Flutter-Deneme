// ignore_for_file: prefer_const_constructors,,, avoid_print

import 'dart:math';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:flutter_application_9/login_page.dart';

import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  late String email, password;
  final formkey = GlobalKey<FormState>();
  final firebaseAuth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    //var height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 0, 0, 0),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            titleText(),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Container(
                    height: 120,
                    width: 60,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 34, 1, 125),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 60,
                    width: 220,
                    decoration:
                        BoxDecoration(color: Color.fromARGB(255, 4, 15, 102)),
                  ),
                ),
                Expanded(
                  child: Container(
                    decoration:
                        BoxDecoration(color: Color.fromARGB(255, 129, 25, 113)),
                    height: 200,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Form(
                key: formkey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    titletextfield(),
                    space15(),
                    emailtextfield(),
                    space15(),
                    passwordtextfield(),
                    space15(),
                    space15(),
                    Center(
                      child: signimbutton(),
                    ),
                    space15(),
                    Center(child: backtologinpage()),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 45, 7, 201)),
                            height: 200,
                          ),
                        ),
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 129, 25, 124)),
                            height: 40,
                          ),
                        ),
                        Expanded(
                          child: Container(
                            height: 120,
                            width: 60,
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 34, 1, 125),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  TextButton signimbutton() {
    return TextButton(
      onPressed: signin,
      child: SizedBox(
        height: 50,
        width: 150,
        child: Center(
          child: Text(
            "Hesap Oluştur",
            style: TextStyle(
                color: Color.fromARGB(255, 255, 255, 255),
                fontSize: 19,
                fontWeight: FontWeight.w500),
          ),
        ),
      ),
    );
  }

  void signin() async {
      if (formkey.currentState!.validate()) {
        formkey.currentState!.save();
        try {
          var userresult = await firebaseAuth.createUserWithEmailAndPassword(
              email: email, password: password);
          print(userresult.user!.uid);
          formkey.currentState!.reset();
            ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text("Kayit yapildi,anasayfaya yonlendiriliyosunuz."),
            ),
          );
          Navigator.pushReplacementNamed(context, "/loginpage");
        } catch (e) {return null;}
         
        
         
      } else {
        print(e.toString());
      }
    }

  TextButton backtologinpage() {
    return TextButton(
      onPressed: () {
        Navigator.pop(
            context, MaterialPageRoute(builder: ((context) => LoginPage())));
      },
      child: SizedBox(
        height: 50,
        width: 150,
        child: Center(
          child: Text(
            "Ana Sayfaya Git",
            style: TextStyle(
                color: Color.fromARGB(255, 255, 255, 255),
                fontSize: 19,
                fontWeight: FontWeight.w500),
          ),
        ),
      ),
    );
  }

  Text titletextfield() {
    return Text(
      "Kayit Olma Sayfasi",
      style: TextStyle(
          fontSize: 33.0, fontWeight: FontWeight.bold, color: Colors.white),
    );
  }

  TextFormField emailtextfield() {
    return TextFormField(
      validator: (value) {
        if (value!.isEmpty) {
          return "bilgileri eksiksiz doldur";
        }  else{}
        return null;
        
      },
      onSaved: (value) {
        email =  value!;
      },
      style: TextStyle(
        color: Color.fromARGB(255, 255, 255, 255),
      ),
      decoration: custominputdecoration("E-Mail ", Colors.white, Colors.white),
    );
  }

  TextFormField passwordtextfield() {
    return TextFormField(
      validator: (value) {
        if (value!.isEmpty) {
          return "bilgileri eksiksiz doldur";
        }  else{}
        return null;
        
      },
      onSaved: (value) {
        password = value!;
      },
      obscureText: true,
      style: TextStyle(
        color: Color.fromARGB(255, 255, 255, 255),
      ),
      decoration: custominputdecoration("şifre", Colors.white, Colors.white),
    );
  }

  Text titleText() {
    return Text("merhaba");
  }

  Widget space15() => SizedBox(
        height: 15,
      );

  InputDecoration custominputdecoration(
      String hintText, Color firstColor, Color secondColor) {
    return InputDecoration(
      hintText: hintText,
      hintStyle: TextStyle(
        color: Color.fromARGB(255, 255, 255, 255),
      ),
      enabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: firstColor),
      ),
      focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(
          color: secondColor,
        ),
      ),
    );
  }
}
