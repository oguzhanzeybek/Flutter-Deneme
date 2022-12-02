// ignore_for_file: prefer_const_constructors, unnecessary_import, prefer_const_literals_to_create_immutables, avoid_print

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_application_3/profilsayfasi.dart';
import 'gonderikarti.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
                color: Colors.pink,
                size: 32.0,
              ),
              onPressed: () {
                //showmodalsheet kullan bu durumda
                showModalBottomSheet(
                    context: context,
                    builder: (BuildContext context) {
                      return Column(
                        children: <Widget>[
                          duyuru("ege seni takip etti", "5 dakika önce"),
                          duyuru("abdurrahman senı begendı", "5 saat önce"),
                          duyuru("tunahan sevgili yaptı", "10 gün önce"),
                        ],
                      );
                    });
              },
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
                  profilKartiOlustur(
                      "jessica Black",
                      "https://cdn.pixabay.com/photo/2020/12/27/14/37/woman-5864279_960_720.jpg",
                      "jessica_black",
                      "https://cdn.pixabay.com/photo/2022/11/07/17/20/city-7576853_960_720.jpg"),
                  profilKartiOlustur(
                      "ozi",
                      "https://cdn.pixabay.com/photo/2022/10/22/06/03/mountains-7538471_960_720.jpg",
                      "ozi19503",
                      "https://cdn.pixabay.com/photo/2022/11/13/18/50/autumn-7589934_960_720.jpg"),
                  profilKartiOlustur(
                      "mehmet",
                      "https://cdn.pixabay.com/photo/2013/07/18/20/26/sea-164989_960_720.jpg",
                      "mehmetonur",
                      "https://cdn.pixabay.com/photo/2021/10/20/11/18/trail-riding-6725753_960_720.jpg"),
                  profilKartiOlustur(
                      "furkan",
                      "https://cdn.pixabay.com/photo/2018/03/12/12/32/woman-3219507_960_720.jpg",
                      "fukitobakhele",
                      "https://cdn.pixabay.com/photo/2022/11/08/05/53/fall-7577769_960_720.jpg"),
                  profilKartiOlustur(
                      "ali",
                      "https://cdn.pixabay.com/photo/2017/07/27/00/46/fantasy-2543658_960_720.jpg",
                      "alihakanorman",
                      "https://cdn.pixabay.com/photo/2022/10/01/15/51/gartenbank-7491775_960_720.jpg"),
                  profilKartiOlustur(
                      "tunahan",
                      "https://cdn.pixabay.com/photo/2019/04/06/06/44/astronaut-4106766_960_720.jpg",
                      "tunahankozan",
                      "https://cdn.pixabay.com/photo/2022/10/17/17/37/sea-7528351_960_720.jpg"),
                  profilKartiOlustur(
                      "abdurrahman",
                      "https://cdn.pixabay.com/photo/2021/04/13/06/59/woman-6174830_960_720.jpg",
                      "bilalkar",
                      "https://cdn.pixabay.com/photo/2016/02/01/16/10/eye-1173863_960_720.jpg")
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            gonderikarti(
              profilresimlinki:
                  "https://cdn.pixabay.com/photo/2020/12/27/14/37/woman-5864279_960_720.jpg",
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
        floatingActionButton: FloatingActionButton(
          
          onPressed: null,
          backgroundColor: Colors.blueAccent,
          child: Icon(
            Icons.add_a_photo,
            color: Colors.white,
          ),
        ));
  }

  Padding duyuru(String mesaj, String gecensure) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            mesaj,
            style: TextStyle(fontSize: 15),
          ),
          Text(gecensure),
        ],
      ),
    );
  }

  Material profilKartiOlustur(String kullaniciadi, String resimlinki,
      String isimsoyad, String kapakresimlinki) {
    return Material(
      child: InkWell(
        onTap: () async {
          bool donenveri = await Navigator.push(context,
              MaterialPageRoute(builder: (BuildContext context) {
            return profilsayfasi(
              profilresimlinki: resimlinki,
              kullaniciadi: kullaniciadi,
              isimsoyad: isimsoyad,
              kapakresimlinki: kapakresimlinki,
            );
          }));
          if (donenveri) {
            print("Kullanıcı profil sayfasına döndü");
          }
        },
        child: Padding(
          padding: const EdgeInsets.only(left: 4.0, right: 4.0),
          child: Column(
            children: [
              Stack(
                alignment: AlignmentDirectional.topEnd,
                children: [
                  Hero(
                    tag: kullaniciadi,
                    child: Container(
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
