import 'dart:async';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:vize/button/bilgilendirme.dart';
import 'package:vize/button/belirtiler.dart';
import 'package:vize/chat/login.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 5), () {
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (_) => HomePage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent[500],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // logo here
            Image.network(
              "https://www.bebek.com/wp-content/uploads/2019/04/otizmin-tedavisi.jpg",
              height: 300,
            ),
            SizedBox(
              height: 30,
            ),
            CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
            )
          ],
        ),
      ),
    );
  }
}


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}


class _HomePageState extends State<HomePage> {
@override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title:Text("           "
          "Erken Tanı Hayat Kurtarır",
      style: TextStyle(color: Colors.black),),
    ),

    body: Container(
      margin: EdgeInsets.symmetric(horizontal:20 ),
      child:
      Column(
        children: <Widget>[
          Center(
            child: Column(
              children: [
                Image.network("https://www.bebek.com/wp-content/uploads/2019/04/otizmin-tedavisi.jpg" ,
                  height: 400,),
              ],
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue[400],
              foregroundColor: Colors.white,
              maximumSize: Size(500,300,),
            ),
                 child:Text("BELİRTİLER"),
            onPressed: ()
           {Navigator.push(
              context,
              MaterialPageRoute(builder: (context)=>Belirti()));
           }
            ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue[400],
                foregroundColor: Colors.white,
                maximumSize: Size(400,100),
              ),
              onPressed:(){
                Navigator.push(
                  context,
                    MaterialPageRoute(builder: (context)=>animasyon()));

              },
              child: Text("BİLGİLENDİRME"),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue[400],
              foregroundColor: Colors.white,
              maximumSize: Size(400, 100),
            ),
              onPressed: (){Navigator.push(context,
              MaterialPageRoute(builder: (context)=>girisMesaj()));

              },
              child: Text("BİLGİ ALIŞVERİŞİ"),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red[500],
              foregroundColor: Colors.white,
              maximumSize: Size(200,100),
            ),
            onPressed: (){},
              child: Text(
                "EN YAKIN PEDAGOG"
              ),
          )
        ],
      ),
  ),
  );
}
}










