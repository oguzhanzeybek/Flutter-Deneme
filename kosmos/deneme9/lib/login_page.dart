// ignore_for_file: prefer_const_constructors

import 'package:deneme9/sign_up.dart';
import 'package:flutter/material.dart';

class Login_Page extends StatefulWidget {
  const Login_Page({super.key});

  @override
  State<Login_Page> createState() => _Login_PageState();
}

class _Login_PageState extends State<Login_Page> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  titletextfield(),
                  space15(),
                  usernametextfield(),
                  space15(),
                  passwordtextfield(),
                  space15(),
                  Center(
                    child: forgotpasswordtext(),
                  ),
                  space15(),
                  Center(
                    child: lognintext(),
                  ),
                  Center(
                    child: signinbutton(),
                  ),
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
            )
          ],
        ),
      ),
    );
  }

  Center signinbutton() {
    return Center( 
      child: TextButton(
        onPressed: (() {Navigator.push(context,  MaterialPageRoute(builder: ((context) => signup()))  );}),
        child: Text(
          "Kayıt Ol",
          style: TextStyle(
              color: Color.fromARGB(255, 255, 255, 255),
              fontSize: 19,
              fontWeight: FontWeight.w500),
        ),
      ),
    );
  }

  TextButton lognintext() {
    return TextButton(
      onPressed: () {},
      child: Container(
        height: 50,
        width: 150,
        margin: EdgeInsets.symmetric(horizontal: 60),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(60),
        ),
        child: Center(
          child: Text(
            "Giriş Yap",
            style: TextStyle(color: Colors.white, fontSize: 19),
          ),
        ),
      ),
    );
  }

  TextButton forgotpasswordtext() {
    return TextButton(
      onPressed: () {},
      child: Container(
        height: 50,
        width: 150,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(60)),
        child: Center(
          child: Text(
            "Şifremi unuttum",
            style: TextStyle(
                color: Color.fromARGB(255, 255, 255, 255),
                fontSize: 19,
                fontWeight: FontWeight.w400),
          ),
        ),
      ),
    );
  }

  TextField passwordtextfield() {
    return TextField(
      style: TextStyle(
        color: Color.fromARGB(255, 255, 255, 255),
      ),
      decoration: custominputdecoration("şifre", Colors.white, Colors.white),
    );
  }

  Text titletextfield() {
    return Text(
      "Merhaba, \nhoşgeldin.",
      style: TextStyle(
          fontSize: 33.0, fontWeight: FontWeight.bold, color: Colors.white),
    );
  }

  TextField usernametextfield() {
    return TextField(
      style: TextStyle(
        color: Color.fromARGB(255, 255, 255, 255),
      ),
      decoration:
          custominputdecoration("kullanıcı adı", Colors.white, Colors.white),
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
