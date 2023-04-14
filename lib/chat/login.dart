import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'kayıtol.dart';

class girisMesaj extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Giriş Sayfası",
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: Scaffold(
        resizeToAvoidBottomInset: false, //pixel hatası gitsin diye
        appBar: AppBar(
          title: const Text(
            "BİLGİ ALIŞVERİŞİ",
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
          centerTitle: true,
        ),
        body: AnaGiris(),
      ),
    );
  }
}

class AnaGiris extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _AnaGiris(context);
  }

  Widget _AnaGiris(BuildContext context) {
    final ad = TextField(
      obscureText: false,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "Kullanıcı adı",
        prefixIcon: Icon(Icons.account_circle_rounded),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(50)),
      ),
    );
    final parola = TextField(
      obscureText: true,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "Şifre",
        prefixIcon: Icon(Icons.vpn_key_outlined),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(50)),
      ),
    );
    final email = TextField(
      obscureText: true,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "e-mail",
        prefixIcon: Icon(Icons.email),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(50)),
      ),
    );

    final girisButon = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(20),
      color: Colors.green[400],
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(20, 15, 30, 15),
        onPressed: () {},
        child: Text("Giriş Yapınız",
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white, fontStyle: FontStyle.normal)),
      ),
    );
    final kayitButon = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(20),
      color: Colors.green[400],
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => yeniKayit()));
        },
        child: Text("Kayıt Ol",
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white, fontStyle: FontStyle.normal)),
      ),
    );
    return Center(
      child: Container(
        child: Padding(
          padding: const EdgeInsets.all(35),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.network(
                "https://w7.pngwing.com/pngs/492/370/png-transparent-hands-in-autism-child-asperger-syndrome-autistic-spectrum-disorders-child-glass-people-social-group.png",
                height: 200,
              ),
              SizedBox(height: 10), //yukarıda tanımladıgımı cagırdım
              ad,
              SizedBox(height: 10), //yukarıda tanımladıgımı cagırdım
              email,
              SizedBox(height: 10),
              parola,
              SizedBox(height: 15),
              girisButon,
              SizedBox(height: 15),
              kayitButon,
            ],
          ),
        ),
      ),
    );
  }
}
