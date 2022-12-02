// ignore_for_file: prefer_const_constructors, unnecessary_import, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'gonderikarti.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Projem",
      theme: ThemeData(primarySwatch: Colors.green),
      home: AnaSayfa(),
    );
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
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.grey[100],
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            color: Colors.grey,
            size: 32.0,
          ),
          onPressed: () {},
        ),
        title: Text(
          "Socialworld",
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            color: Colors.black54,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(
              Icons.notifications,
              color: Colors.pinkAccent,
              size: 32.0,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  blurRadius: 5,
                  offset: Offset(0.0, 3.0),
                  color: Colors.grey,
                ),
              ],
            ),
            height: 100.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                profilKartiOlustur("jessica Black",
                    "https://cdn.pixabay.com/photo/2022/11/04/16/24/wedding-7570266_960_720.jpg"),
                profilKartiOlustur("ozi",
                    "https://cdn.pixabay.com/photo/2022/10/22/06/03/mountains-7538471_960_720.jpg"),
                profilKartiOlustur("mehmet",
                    "https://cdn.pixabay.com/photo/2013/07/18/20/26/sea-164989_960_720.jpg"),
                profilKartiOlustur("furkan",
                    "https://cdn.pixabay.com/photo/2018/03/12/12/32/woman-3219507_960_720.jpg"),
                profilKartiOlustur("ali",
                    "https://cdn.pixabay.com/photo/2017/07/27/00/46/fantasy-2543658_960_720.jpg"),
                profilKartiOlustur("tunahan",
                    "https://cdn.pixabay.com/photo/2019/04/06/06/44/astronaut-4106766_960_720.jpg"),
                profilKartiOlustur("abdurrahman",
                    "https://cdn.pixabay.com/photo/2021/04/13/06/59/woman-6174830_960_720.jpg")
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          gonderikarti(
            profilresimlinki:
                "https://cdn.pixabay.com/photo/2018/03/06/22/57/portrait-3204843_960_720.jpg",
            gonderiresimlinki:
                "https://cdn.pixabay.com/photo/2022/08/25/09/35/germany-7409782_960_720.jpg",
            isimsoyad: "jessıca Black",
            gecensure: "15 dakika önce",
            aciklama: ":)",
          ),
          gonderikarti(
            profilresimlinki:
                "https://cdn.pixabay.com/photo/2022/10/22/06/03/mountains-7538471_960_720.jpg",
            gonderiresimlinki:
                "https://cdn.pixabay.com/photo/2021/10/13/12/33/forest-6706559_960_720.jpg",
            isimsoyad: "Oguzhan",
            gecensure: "2 dakika önce",
            aciklama: "Bugün çok mutluyum :D",
          ),
          gonderikarti(
            profilresimlinki:
                "https://cdn.pixabay.com/photo/2018/03/06/22/57/portrait-3204843_960_720.jpg",
            gonderiresimlinki:
                "https://cdn.pixabay.com/photo/2021/11/23/06/45/city-6818066_960_720.jpg",
            isimsoyad: "Abdurrahman",
            gecensure: "2 yıl önce",
            aciklama: "hava ne kadar sıcak yav",
          ),
          gonderikarti(
            profilresimlinki:
                "https://cdn.pixabay.com/photo/2018/03/06/22/57/portrait-3204843_960_720.jpg",
            gonderiresimlinki:
                "https://cdn.pixabay.com/photo/2022/10/26/07/44/contrast-7547668_960_720.jpg",
            isimsoyad: "Oguzhan ",
            gecensure: "9 Saat önce",
            aciklama: "hava ne kadar sıcak yav",
          ),
          gonderikarti(
            profilresimlinki:
                "https://cdn.pixabay.com/photo/2017/07/27/00/46/fantasy-2543658_960_720.jpg",
            gonderiresimlinki:
                "https://cdn.pixabay.com/photo/2022/11/14/08/37/park-7591049_960_720.jpg",
            isimsoyad: "Tunahan",
            gecensure: "22 dakika önce",
            aciklama: "hava ne kadar sıcak yav",
          ),
          gonderikarti(
            profilresimlinki:
                "https://cdn.pixabay.com/photo/2018/03/06/22/57/portrait-3204843_960_720.jpg",
            gonderiresimlinki:
                "https://cdn.pixabay.com/photo/2021/12/14/15/37/christmas-tree-6870755_960_720.jpg",
            isimsoyad: "ege",
            gecensure: "25 dakika önce",
            aciklama: "hava ne kadar sıcak yav",
          ),
        ],
      ),
    );
  }

  Material profilKartiOlustur(String kullaniciadi, String resimlinki) {
    return Material(
      
      child: InkWell(
        borderRadius: BorderRadius.circular(500),
        onTap: () {



          Navigator.push( context, MaterialPageRoute(builder: ( BuildContext (context) =>  profilsayfasi()) ));



        },
        child: Padding(
          padding: const EdgeInsets.only(left: 4.0, right: 4.0),
          child: Column(
            children: [
              Stack(
                alignment: AlignmentDirectional.topEnd,
                children: [
                  Container(
                    width: 70.0,
                    height: 70.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(35.0),
                      color: Colors.white,
                      border: Border.all(
                        width: 3.0,
                        color: Colors.white,
                      ),
                      image: DecorationImage(
                        image: NetworkImage(resimlinki),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    width: 18.0,
                    height: 18.0,
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(20.0),
                        border: Border.all(width: 2.0, color: Colors.white)),
                  )
                ],
              ),
              SizedBox(
                height: 4,
              ),
              Text(
                kullaniciadi,
                style: TextStyle(
                  fontSize: 15.0,
                  color: Colors.black,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

// ignore: camel_case_types
class profilsayfasi extends StatelessWidget {
  const profilsayfasi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("profil sayfası"),
      ),
    );
  }
}
