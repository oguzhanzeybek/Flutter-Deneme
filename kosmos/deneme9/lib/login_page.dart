

// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
   late String password = "kullanıcı adı yanlıs";
   late String  username = "Kullanıcı adı ";
   
  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Form(
          key: _formkey,
          child: Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [



                TextFormField(
                  //autovalidateMode: true,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.purple),
                    ),
                    labelText: "Kullanıcı Adı",
                    labelStyle: TextStyle(color: Colors.purple),
                    border: OutlineInputBorder(),
                  ),
                  validator: ((value) {
                    if (value == "") {
                      return "kullanıcı adını giriniz.";
                    } else {
                      return null;
                    }
                  }),
                  onSaved: (value) {
                    username = value!;
                  },
                ),
                SizedBox(
                  height: 10.0,
                ),


                TextFormField(
                  //autovalidateMode: true,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.purple),
                    ),
                    labelText: "Şifre",
                    labelStyle: TextStyle(color: Colors.purple),
                    border: OutlineInputBorder(),
                  ),
                  validator: ((value) {
                    if (value == "") {
                      return "Şifrenizi giriniz.";
                    } else {
                      return null;
                    }
                  }),
                  onSaved: (value) {
                    password = value!;
                  },
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MaterialButton(
                      child: Text("Giriş Yap"),
                      onPressed: () {},
                    ),
                    MaterialButton(
                      child: Text("Şifremi unuttum "),
                      onPressed: () {},
                    ),
                  ],
                ),
                _loginButton()
              ],
            ),
          )),
    );
  }

  Widget _loginButton ()  => ElevatedButton(
         onPressed: () async {
          if (_formkey.currentState!.validate()) {
            _formkey.currentState!.save();
            if(username == "a" && password == "b"){
              debugPrint("giriş başarılı");
            } else{
              showDialog(barrierDismissible: false,context: context, builder: (BuildContext  context) { 
                return AlertDialog(
                  title: Text("Hata!"),
                  content: Text("giriş bilgileriniz hatalı"),
                  actions: [
                    MaterialButton(child: Text("geri dön"),onPressed:(() => Navigator.pop(context)))
                  ],
                );
                
              });
            }
          }
        },
        child: Text("Giriş Yap"),
        
      );
}


