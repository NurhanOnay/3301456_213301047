import 'package:flutter/material.dart';
import 'package:vize/chat/kisi.dart';

class yeniKayit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String ad;
    String email;
    String sifre;

    return Scaffold(
      appBar: AppBar(
        title: Text("Yeni Kayıt"),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Form(
          child: ListView(
            children: <Widget>[
              SizedBox(height: 10),
              TextFormField(
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Bilgileri eksiksiz gir";
                  } else {}
                },
                onSaved: (value) {
                  ad = value!;
                },
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.account_circle),
                  hintText: "Adınız ve Soyadınız ",
                  labelText: "Ad Soyad",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 10),
              TextFormField(
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Bilgileri eksiksz gir";
                  } else {}
                },
                onSaved: (value) {
                  email = value!;
                },
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.mail),
                  hintText: "E-mail Adresi",
                  labelText: "e-mail",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 10),
              TextFormField(
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Bilgileri eksiksz gir";
                  } else {}
                },
                onSaved: (value) {
                  sifre = value!;
                },
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.key),
                  hintText: "Şifreniz",
                  labelText: "Şifre",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 10),
              Container(
                width: double.infinity,
                height: 40,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context)=>Kaydet()));
                  },
                  child: Text("Kaydet"),
                  style: ElevatedButton.styleFrom(
                    textStyle: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
