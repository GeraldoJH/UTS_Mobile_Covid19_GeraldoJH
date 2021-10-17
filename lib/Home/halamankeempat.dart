import 'package:flutter/material.dart';
import 'halamakedua.dart';
import 'halamaketiga.dart';
import 'main.dart';
import 'halamankelima.dart';

class HalamanKeempat extends StatelessWidget{
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
                            child: Text('Contact Me'),
                            onPressed: () {  Navigator.push(
                              context,
                              MaterialPageRoute(builder:(context)=> HalamanKelima()),);
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
                            onPressed:(){  Navigator.pop(context);}


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
                            "Kota Bogor\n"
                                "119\n"
                                "(0251) 8331753\n"
                                "Email : kominfo@kotabogor.go.id & dinkes@kotabogor.go.id\n"
                                "Source:http://www.covid19.kotabogor.go.id/ ",
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