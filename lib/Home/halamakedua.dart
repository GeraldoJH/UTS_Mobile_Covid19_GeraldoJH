import 'package:flutter/material.dart';
import 'halamaketiga.dart';
import 'main.dart';
import 'halamankeempat.dart';
import 'halamankelima.dart';


class HalamanKedua extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: false,
          title: Text('Covid-19'),

        ),
        body: SingleChildScrollView(
            child: Column(children: <Widget>[
              Row(
                //ROW 1
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                      color: Colors.white,
                      child: Align(
                          alignment: Alignment.center,
                          child: Image.network(
                              'http://ft.umm.ac.id/files/image/covid19_b.jpg',
                              width: 390,
                              height: 290,
                              fit: BoxFit.fill)
                      )
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                      color: Colors.white,
                      child: Align(
                        alignment: Alignment.center,
                        child: RaisedButton(
                            child: Text('Macam-Macam Virus Corona saat ini'),
                            onPressed: () { Navigator.push(
                              context,
                              MaterialPageRoute(builder:(context)=> HalamanKetiga()),);
                            }

                        ),
                      )
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                      color: Colors.white,
                      child:Align(
                        alignment: Alignment.center,
                        child: RaisedButton(
                            child: Text('kembali'),
                          onPressed: () {  Navigator.push(
                          context,
                          MaterialPageRoute(builder:(context)=> MyApp()),);}


                        ),
                      )
                  ),
                ],
              ),

              Row( // ROW 3

                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                        color: Colors.blue,
                        width: 410,
                        child: Container(
                          margin: EdgeInsets.all(15.0),
                          child: Text(
                            "1.Sering Mencuci Tangan\n"
                                "2.Menjaga jarak\n"
                                "3.Tidak Sering Menyentuh Wajah\n"
                                "4.Mempraktikkan etika bersin dan batuk\n"
                                "5.Segera Kedokter jika mengalami gejala\n"
                                "6.Memakai Masker\n"
                                "7.Membersihkan permukaan barang yang sering disentuh"

                                "Source:http://upbk.unp.ac.id/",


                            style: TextStyle(
                                fontSize: 15.0, color: Colors.white),
                            maxLines: 20,
                            textAlign: TextAlign.justify,
                            overflow: TextOverflow.ellipsis,
                          ),
                        )
                    ),
                  ]),
              Row( // ROW 4

                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      child:
                      Container(
                        margin: EdgeInsets.only(left: 45.0, top: 4.0),
                        child: Text('276 Vote', style: TextStyle(
                            fontSize: 25.0, color: Colors.black)),
                      ),
                    ),
                  ]),
              Row( // ROW 5
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                        margin: EdgeInsets.all(12.0),
                        padding: EdgeInsets.all(8.0),
                        child:
                        Icon(
                          Icons.favorite,
                          color: Colors.redAccent,
                          size: 40.0,
                          semanticLabel: 'Text to announce in accessibility modes',
                        )
                    ),




                  ]),
            ]
            )
        )
    );
  }}