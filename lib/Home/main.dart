import 'package:flutter/material.dart';
import 'halamaketiga.dart';
import 'halamakedua.dart';
import 'halamankeempat.dart';
import 'halamankelima.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Covid-19',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Covid-19'),
    );

  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
        appBar: AppBar(
          centerTitle: false,
          title: Text('Covid-19'),

        ),
        body:SingleChildScrollView(
            child: Column(children: <Widget>[
              Row(
                //ROW 1
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                      color: Colors.white,
                      child:Align(
                          alignment: Alignment.center,
                          child:  Image.network(
                              'http://ft.umm.ac.id/files/image/covid19_b.jpg',
                              width: 390,
                              height: 290,
                              fit:BoxFit.fill)
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
                          child: Text('Apa itu Covid-19'),
                              onPressed:(){
                            Navigator.push(
                                  context,
                            MaterialPageRoute(builder:(context)=> HalamanPertama()),);}


                          ),
                      )
                  ),
                ],
              ),





            ]
            )
        )
    );
  }
}




class HalamanPertama extends StatelessWidget{
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
                            child: Text('CaraMencegah'),
                            onPressed: () { Navigator.push(
                              context,
                              MaterialPageRoute(builder:(context)=> HalamanKedua()),);
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

              Row(// ROW 3

                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                        color: Colors.blue,
                        width: 410,
                        child: Container(
                          margin: EdgeInsets.all(15.0),
                          child: Text(
                            "Coronavirus adalah kumpulan virus yang bisa menginfeksi sistem pernapasan. Pada banyak kasus, virus ini hanya menyebabkan infeksi pernapasan ringan, seperti flu. Namun, virus ini juga bisa menyebabkan infeksi pernapasan berat, seperti infeksi paru-paru (pneumonia).\n"
                                "Source:https://www.alodokter.com/virus-corona ",
                            style: TextStyle(fontSize: 15.0 ,color: Colors.white),
                            maxLines: 20,
                            textAlign: TextAlign.justify,
                            overflow: TextOverflow.ellipsis,
                          ),
                        )
                    ),
                  ]),
              Row(// ROW 4

                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      child:
                      Container(
                        margin: EdgeInsets.only(left: 45.0, top: 4.0),
                        child: Text('276 Vote', style: TextStyle(fontSize: 25.0 ,color: Colors.black)),
                      ),
                    ),
                  ]),
              Row(// ROW 5
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

