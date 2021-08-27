import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
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


  @override
  Widget build(BuildContext context) {

    var ekranBilgisi = MediaQuery.of(context);
    final double ekranYuksekligi = ekranBilgisi.size.height;
    final double ekranGenisligi =  ekranBilgisi.size.width;


    return Scaffold(
      backgroundColor: Colors.purple[800],

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding:  EdgeInsets.only(bottom: ekranYuksekligi/20),
              child: SizedBox(
                width: ekranGenisligi/4,
                  height: ekranYuksekligi/6,
                  child: Image.asset("resimler/logo.png"),
              ),
            ),
            Padding(
              padding:  EdgeInsets.all(ekranYuksekligi/30),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Kullanıcı Adı : ",
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                ),
              ),
            ),
            
            Padding(
              padding:  EdgeInsets.all(ekranYuksekligi/30),
              child: TextField(
                obscureText: true, //Girdiğimiz şifrede karakterleri saklama özelliği
                decoration: InputDecoration(
                  hintText: "Şifre :",
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  )
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(ekranYuksekligi/30),
              child: SizedBox(
                width: ekranGenisligi/1.2,
                height: ekranYuksekligi/12,
                child: RaisedButton(
                  child: Text("Giriş Yap",style: TextStyle(fontSize: ekranGenisligi/25),),
                  onPressed: (){
                    print("Giriş Yapıldı");
                  },
                  color: Colors.purple[200],
                  textColor: Colors.pinkAccent,

                ),
              ),
            ),
            GestureDetector(
              onTap: (){
                print("Yeni Şifre Al");
              },
              child: Text(
                "Şifremi Unuttum!",
                 style: TextStyle(
                   color: Colors.white,
                   fontWeight: FontWeight.bold,
                   fontSize: ekranGenisligi/30,
                 ),),
            )


          ],
        ),
      ),

    );
  }
}
