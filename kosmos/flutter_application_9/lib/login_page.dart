// ignore_for_file: prefer_const_constructors





import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_application_9/home_page.dart';
import 'package:flutter_application_9/service/auth_service.dart';
import 'package:flutter_application_9/sign_up.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_9/widgets/custom_text_button.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late String email, password;
  final formkey = GlobalKey<FormState>();
  final firebaseAuth = FirebaseAuth.instance;
  final authService = AuthService();
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 0, 0, 0),
      body: SingleChildScrollView(
        child: Form(
          key: formkey,
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
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 129, 25, 113)),
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
                    emailtextfield(),
                    space15(),
                    passwordtextfield(),
                    space15(),
                    forgotpasswordtext(),
                    space15(),
                    lognintext(),
                    Center(
                      child: CustomTextButton(
                        onPressed: (() => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: ((context) => SignUp()),
                              ),
                            )),
                        buttonText: "Hesap oluştur",
                        textcolor: Colors.white,
                      ),
                    ),
                    Center(
                      child: CustomTextButton(
                          onPressed: () async {
                            final result = await authService.signInAnonymos();
                            if (result != null) {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: ((context) => HomePage())));
                            } else {
                              print("hata ile karsilasildi");
                            }
                          },
                          buttonText: "misafir girişi",
                          textcolor: Colors.white),
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
      ),
    );
  }

  Center signinbutton() {
    return Center(
      child: TextButton(
        onPressed: (() {
          Navigator.push(
              context, MaterialPageRoute(builder: ((context) => SignUp())));
        }),
        child: Text(
          "Kayit Ol",
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
      onPressed: signin,
      child: Center(
        child: Container(
          height: 50,
          width: 150,
          margin: EdgeInsets.symmetric(horizontal: 60),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(60),
          ),
          child: Center(
            child: Text(
              "Giriş Yapp",
              style: TextStyle(color: Colors.white, fontSize: 19),
            ),
          ),
        ),
      ),
    );
  }

  void signin() async {
     
    if (formkey.currentState!.validate()) {
      formkey.currentState!.save();
      final result = await authService.signIn(email,password);
      if(result=="succses"){

      } else{
        showDialog(context: context, builder:(context){
          return AlertDialog(
            title: Text("HATA"),
            content: Text(result!),
          );
        });
      }
    
  
     
    } 
  }

  TextButton forgotpasswordtext() {
    return TextButton(
      onPressed: () async {
        Future forgotPassword(String email) async {
          try {
            final result =
                await firebaseAuth.sendPasswordResetEmail(email: email);
            print("mail kutunuzu kontrol ediniz");
          } catch (e) {return null;}
        }
      },
      child: Center(
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
      ),
    );
  }

  TextFormField passwordtextfield() {
    return TextFormField(
      validator: (value) {
        if (value!.isEmpty) {
          return "bilgileri eksiksiz doldur";
        } else{}
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

  Text titletextfield() {
    return Text(
      "Merhaba, \nhoşgeldin.",
      style: TextStyle(
          fontSize: 33.0, fontWeight: FontWeight.bold, color: Colors.white),
    );
  }

  TextFormField emailtextfield() {
    return TextFormField(
      validator: (value) {
        if (value!.isEmpty) {
          return "bilgileri eksiksiz doldur";
        } else{return null;}
        
      },
      onSaved: (value)  {
        email =  value!;
      },
      style: TextStyle(
        color: Color.fromARGB(255, 255, 255, 255),
      ),
      decoration: custominputdecoration("E-Mail ", Colors.white, Colors.white),
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
