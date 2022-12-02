// ignore_for_file: use_key_in_widget_constructors, prefer_const_literals_to_create_immutables, prefer_const_constructors, camel_case_types, unnecessary_import, prefer_const_constructors_in_immutables, avoid_unnecessary_containers, prefer_typing_uninitialized_variables, avoid_print, non_constant_identifier_names

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class gonderikarti extends StatelessWidget {
  final String profilresimlinki;
  final String isimsoyad;
  final String gecensure;
  final String gonderiresimlinki;
  final String aciklama;

  const gonderikarti(
      {super.key,
      required this.profilresimlinki,
      required this.isimsoyad,
      required this.gecensure,
      required this.gonderiresimlinki,
      required this.aciklama});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Material(
        elevation: 24,
        borderRadius: BorderRadius.circular(25.0),
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Container(
            width: double.infinity,
            height: 400,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5.0),
              color: Colors.white,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: Container(
                            width: 50.0,
                            height: 50.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25.0),
                              color: Colors.indigo,
                              image: DecorationImage(
                                image: NetworkImage(profilresimlinki),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              isimsoyad,
                              style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              gecensure,
                              style: TextStyle(
                                color: Colors.grey,
                                fontStyle: FontStyle.italic,
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Icon(Icons.more_vert),
                    ),
                  ],
                ),
                Text(
                  aciklama,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 17,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Image.network(
                  gonderiresimlinki,
                  width: double.infinity,
                  height: 240,
                  fit: BoxFit.cover,
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    iconlubutonum(
                      ikonum: Icons.favorite,
                      yazi: "Beğen",
                      Stringfonksiyonum: () {
                        print("begenildi");
                      },
                    ),
                    iconlubutonum(
                      ikonum: Icons.comment,
                      yazi: "Yorum",
                      Stringfonksiyonum: () {
                        print("yorum yapıldı");
                      },
                    ),
                    TextButton.icon(
                      onPressed: () {},
                      icon: Icon(
                        Icons.share,
                        color: Colors.pinkAccent,
                        size: 35,
                      ),
                      label: Text(
                        "Paylaş",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class iconlubutonum extends StatelessWidget {
  final IconData ikonum;
  final String yazi;
  final Stringfonksiyonum;

  iconlubutonum(
      {required this.ikonum, required this.yazi, this.Stringfonksiyonum});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        onTap: Stringfonksiyonum,
        child: Container(
          child: Row(
            children: [
              Icon(
                ikonum,
                color: Colors.pinkAccent,
                size: 38,
              ),
              SizedBox(
                width: 7,
              ),
              Text(
                yazi,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
