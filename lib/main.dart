import 'package:flutter/material.dart';

void main() {
  runApp(Hru_chat());
}



class Hru_chat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Chat Uygulaması Arayüzü",
      home: Iskele(),
    );
  }
}

class Iskele extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Chat Uygulaması Arayüzü"),
      ),
      body: AnaEkran(),
    );
  }
}

class AnaEkran extends StatefulWidget {
  @override
  _AnaEkranState createState() => _AnaEkranState();
}

class _AnaEkranState extends State<AnaEkran> {
  TextEditingController t1 = TextEditingController();
  List<MesajBalonu> mesajListesi = [];

  listeyeEkle(String gonderilenMesaj) {
    setState(() {
      MesajBalonu mesajlar = MesajBalonu(mesaj: gonderilenMesaj);
      mesajListesi.insert(0, mesajlar);
      t1.clear();
    });
  }

  Widget metinGirisAlani() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 75),
      child: Row(
        children: <Widget>[
          Flexible(
            child: TextField(
              controller: t1,
              onSubmitted: listeyeEkle,
            ),
          ),
          IconButton(
              icon: Icon(Icons.send), onPressed: () => listeyeEkle(t1.text)),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      child: Column(
        children: <Widget>[
          Flexible(
            child: ListView.builder(
              padding: EdgeInsets.all(15),
              reverse: true,
              itemCount: mesajListesi.length,
              itemBuilder: (_, int indeksNumarasi) =>
              mesajListesi[indeksNumarasi],
            ),
          ),
          Divider(
            thickness: 1,
          ),
          metinGirisAlani(),
        ],
      ),
    );
  }
}

String isim = "kullanici";

class MesajBalonu extends StatelessWidget {
  String mesaj;

  MesajBalonu({required this.mesaj});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      child: Row(
        children: <Widget>[
          CircleAvatar(
            child: Text(isim[0]),
          ),
          Column(
            children: <Widget>[
              Text(isim),
              Container(
                margin: EdgeInsets.all(5),
                child: Text(mesaj),
              ),
            ],
          ),
        ],
      ),
    );
  }
}