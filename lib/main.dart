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
  TextEditingController t1 = TextEditingController();
  TextEditingController t2 = TextEditingController();

  girisYap() {
    Navigator.pushNamed(
      context,
      "/ProfilSayfasiRotasi",
      arguments: VeriModeli(kullaniciAdi: t1.text, sifre: t2.text),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Giriş Ekrani")),
      body: Container(
        child: Column(
          children: <Widget>[
            TextFormField(
              controller: t1,
            ),
            TextFormField(
              controller: t2,
            ),
            RaisedButton(
                onPressed: () {
                  girisYap();
                },
                child: Text("Giriş Yap")),
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

class VeriModeli {
  String kullaniciAdi, sifre;
  VeriModeli({required this.kullaniciAdi, required this.sifre});
}