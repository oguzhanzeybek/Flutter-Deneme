// ignore_for_file: use_key_in_widget_constructors, camel_case_types, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import 'gonderikarti.dart';

class profilsayfasi extends StatelessWidget {


  final String isimsoyad;
  final String kullaniciadi;
  final String kapakresimlinki;
  final String profilresimlinki;

  const profilsayfasi({super.key, required this.isimsoyad, required this.kullaniciadi, required this.kapakresimlinki, required this.profilresimlinki});



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: ListView(
        children: [
          Stack(
            children: [
              Container(
                height: 260.0,
                color: Colors.grey[100],
              ),
              Container(
                height: 220,
                decoration: BoxDecoration(
                    image: DecorationImage(
                  image: NetworkImage(
                      kapakresimlinki),
                  fit: BoxFit.cover,
                )),
              ),
              Positioned(
                left: 17,
                bottom: 0,
                child: Hero(
                  tag: kullaniciadi,
                  child: Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(
                              profilresimlinki),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(60),
                        border: Border.all(
                          width: 1,
                          color: Colors.white,
                        )),
                    height: 120,
                    width: 120,
                  ),
                ),
              ),
              Positioned(
                top: 220,
                left: 140,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      isimsoyad,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                     kullaniciadi,
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                bottom: 22,
                right: 15,
                child: Container(
                  height: 40,
                  width: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(19),
                      color: Colors.lightBlue,
                      border: Border.all(width: 1, color: Colors.cyan)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.add_circle,
                        size: 19,
                        color: Colors.white,
                      ),
                      SizedBox(width: 2.5),
                      Text(
                        "Takip Et",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                  left: 4,
                  top: 4,
                  child: IconButton(
                      onPressed: () {
                        Navigator.pop(context,true);
                      },
                      icon: Icon(
                        Icons.arrow_back_ios_new,
                        color: Colors.white,
                      ))),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 60,
            color: Colors.grey.withOpacity(0.1),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,



              children: [
              
                sayac("takip edilen","2K"),
                sayac("Fotoğraf","416"),
                sayac("Takipçi","2K"),
              ],
            ),
          ),

          
          gonderikarti(
            
            profilresimlinki:
                profilresimlinki,
            gonderiresimlinki:
                "https://cdn.pixabay.com/photo/2022/10/28/10/22/cat-7552840_960_720.jpg",
            isimsoyad: "jess_jamess",
            gecensure: "2 saat önce",
            aciklama: "This I Love",
          ),





        ],
      ),
    );
  }

  Column sayac(String baslik,String sayi) {
    return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    sayi,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 1,
                  ),
                  Text(
                    baslik,
                    style: TextStyle(
                      color: Colors.black45,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              );
  }
}
