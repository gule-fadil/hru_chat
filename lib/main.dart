import 'package:flutter/material.dart';



void main() => runApp(Hru_chat());

class Hru_chat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: GirisEkrani(),
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
    if (t1.text == "admin" && t2.text == "1234") {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ProfilEkrani(
            kullaniciAdi: t1.text,
            sifre: t2.text,
          ),
        ),
      );
    } else {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text("Yanlış kullanıcı adı veya şifre"),
            content: const Text("Lütfen giriş bilgilerinizi gözden geçirin."),
            actions: <Widget>[
              TextButton(
                child: const Text("Kapat"),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Giriş Ekrani")),
      body: Container(
        margin: EdgeInsets.all(100),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextFormField(
              decoration: const InputDecoration(hintText: "Kullanıcı Adı"),
              controller: t1,
            ),
            TextFormField(
              decoration: const InputDecoration(hintText: "Şifre"),
              controller: t2,
            ),
            ElevatedButton(
                onPressed: () {
                  girisYap();
                },
                child: const Text("Giriş Yap")),
          ],
        ),
      ),
    );
  }
}

class ProfilEkrani extends StatefulWidget {
  String kullaniciAdi, sifre;
  ProfilEkrani({required this.kullaniciAdi, required this.sifre});

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
      body: Container(
        child: Column(
          children: <Widget>[
            ElevatedButton(
              onPressed: cikisYap,
              child: Text("Çıkış Yap"),
            ),
            Text("Kullanıcı Adınız: ${widget.kullaniciAdi}"),
            Text("Şifreniz: ${widget.sifre}"),
          ],
        ),
      ),
    );
  }
}