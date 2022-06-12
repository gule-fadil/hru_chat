import 'package:flutter/material.dart';

void main() => runApp(Hru_chat());

class Hru_chat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/",
      routes: {
        "/": (context) => GirisEkrani(),
        "/ProfilSayfasiRotasi": (context) => ProfilEkrani(),
      },
    );
  }
}

class GirisEkrani extends StatefulWidget {
  @override
  _GirisEkraniState createState() => _GirisEkraniState();
}

class _GirisEkraniState extends State<GirisEkrani> {
  girisYap() {
    Navigator.pushNamed(context, "/ProfilSayfasiRotasi");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Giriş Ekrani")),
      body: Container(
        child: Column(
          children: <Widget>[
            RaisedButton(onPressed: girisYap, child: Text("Giriş Yap")),
          ],
        ),
      ),
    );
  }
}

class ProfilEkrani extends StatefulWidget {
  @override
  _ProfilEkraniState createState() => _ProfilEkraniState();
}

class _ProfilEkraniState extends State<ProfilEkrani> {
  cikisYap() {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Profil Sayfası")),
      body: Container(
        child: Column(
          children: <Widget>[
            RaisedButton(
              onPressed: cikisYap,
              child: Text("Çıkış Yap"),
            )
          ],
        ),
      ),
    );
  }
}