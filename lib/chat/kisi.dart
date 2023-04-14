import 'package:flutter/material.dart';

class Kaydet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title:Text("Kayıt Ol "
        ,
        style: TextStyle(color: Colors.black),),
    ),
        body: TextField(
          obscureText: true,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
            hintText: "HOŞGELDİNİZ",
            prefixIcon: Icon(Icons.account_circle_rounded),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(50)),
          ),
        ),



    );
  }
}
