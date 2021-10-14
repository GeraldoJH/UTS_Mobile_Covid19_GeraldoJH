import 'package:flutter/material.dart';
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
                          child:  Image.network('http://ft.umm.ac.id/files/image/covid19_b.jpg',
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
                          child: Text('Cara Menjaga diri'),
                              onPressed:(){    Navigator.push(
                                  context,
                                  MaterialPageRoute(builder:(context)=> HalamanKedua()),);}


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
                            "Coronavirus adalah kumpulan virus yang bisa menginfeksi sistem pernapasan. Pada banyak kasus, virus ini hanya menyebabkan infeksi pernapasan ringan, seperti flu. Namun, virus ini juga bisa menyebabkan infeksi pernapasan berat, seperti infeksi paru-paru (pneumonia). ",
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
  }
}
class HalamanKedua extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: false,
          title: Text('Covid-19'),
          leading: IconButton(
            onPressed: () {},
            icon: Icon(Icons.arrow_back),
          ),
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
                            "1.Mencuci tangan dengan benar\n"
                            "2.Menggunakan masker\n"
                            "3.Menjaga daya tahan tubuh\n"
                            "4.Menerapkan physical distancing dan isolasi mandiri\n"
                            "5.Membersihkan rumah dan melakukan disinfeksi secara rutin\n",

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

class HalamanKetiga extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: false,
          title: Text('Covid-19'),
          leading: IconButton(
            onPressed: () {},
            icon: Icon(Icons.arrow_back),
          ),
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
                            child: Text('Emergency Call'),
                            onPressed: () {  Navigator.push(
                              context,
                              MaterialPageRoute(builder:(context)=> HalamanKeempat()),);
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
                            "Varian Alfa,Beta,Gamma,Delta,Lambda,Kappa",
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
class HalamanKeempat extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: false,
          title: Text('Covid-19'),
          leading: IconButton(
            onPressed: () {},
            icon: Icon(Icons.arrow_back),
          ),
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
                            "112\n"
                                "081 112 112 112\n"
                                "081 388 376 955",
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
class HalamanKelima extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: false,
          title: Text('Covid-19'),
          leading: IconButton(
            onPressed: () {},
            icon: Icon(Icons.arrow_back),
          ),
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
                            "ingg18999@gmail.com",
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
