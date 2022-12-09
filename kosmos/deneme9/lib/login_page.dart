// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 0, 0, 0),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: height * .30,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/images/foto22.png"),
                ),
              ),
            ),
            SizedBox(height: 25,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Merhaba, \nhoşgeldin.",
                    style: TextStyle(
                        fontSize: 33.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  TextField(
                    decoration: custominputdecoration("kullanıcı adı",Colors.white,Colors.white),
                  ),
                  space15(),
                  TextField(
                    decoration: custominputdecoration("şifre",Colors.white,Colors.white),
                  ),
                  space15(),
                  Center(
                    child: TextButton(
                      onPressed: () {},
                      child: Container(
                        height: 50,
                        width: 150,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(60)),
                        child: Center(
                          child: Text(
                            "Şifremi unuttum",
                            style: TextStyle(
                                color: Color.fromARGB(255, 255, 255, 255),
                                fontSize: 19,
                                fontWeight: FontWeight.w400
                                
                                ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  space15(),
                  Center(
                    child: TextButton(
                      onPressed: () {},
                      child: Container(
                        height: 50,
                        width: 150,
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
                    ),
                  ),
                  space15(),
                  Center(
                    child: TextButton(
                      onPressed: () {},
                      child: Container(
                        height: 50,
                        width: 150,
                        
                        child: Center(
                          child: Text(
                            "Kayıt Ol",
                            style: TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255),
                                fontSize: 19 ,
                                fontWeight: FontWeight.w500
                            ),
                          ),
                        ),
                        
                      ),
                    ),
                  ), 
                ], 
              ),
            )
          ], 
          
        ),  
      ), 
      
      
    );
    
  }

  Widget space15() => SizedBox(
        height: 15,
      );

  InputDecoration custominputdecoration(String hintText,Color firstColor, Color secondColor) {
    return InputDecoration(
      hintText: hintText,
      hintStyle: TextStyle(
        color: Color.fromARGB(255, 255, 255, 255),
      ),
      enabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(color:firstColor),
      ),
      focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: secondColor),
      ),
    );
  }
}
