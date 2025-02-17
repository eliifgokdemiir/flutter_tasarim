import 'package:deneme_flu/renkler.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class Anasayfa extends StatefulWidget {
  const Anasayfa({super.key});

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  @override
  Widget build(BuildContext context) {
    var ekranBilgisi = MediaQuery.of(context);
    final double ekranGenisligi = ekranBilgisi.size.width;
    final double ekranYuksekligi = ekranBilgisi.size.height;

    print("Ekran Genişliği: $ekranGenisligi");
    print("Ekran Yüksekliği: $ekranYuksekligi");

    var d = AppLocalizations.of(context);
    //sayfayla ilgili tasarımlar burada yapılacak
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Pizza",
          style:
              TextStyle(color: yaziRenk1, fontFamily: "Pasifico", fontSize: 22),
        ),
        backgroundColor: anaRenk,
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 16),
            child: Text(
              d!.pizzaBaslik,
              style: TextStyle(
                  fontSize: 36, color: anaRenk, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16),
            child: Image.asset("assets/pizza.png"),
          ),
          Padding(
              padding: const EdgeInsets.only(top: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Chip(icerik: d.peynirYazi),
                  Chip(icerik: d.sucukYazi),
                  Chip(icerik: d.zeytinYazi),
                  Chip(icerik: d.biberYazi),
                ],
              )),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Text(
                  d!.teslimatSure,
                  style: TextStyle(
                      fontSize: 22,
                      color: yaziRenk2,
                      fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    d.teslimatBalik,
                    style: TextStyle(
                        fontSize: 22,
                        color: anaRenk,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Text(
                  d.pizzaAciklama,
                  style: TextStyle(
                    fontSize: 22,
                    color: yaziRenk2,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  d.fiyat,
                  style: TextStyle(
                      fontSize: 44,
                      color: anaRenk,
                      fontWeight: FontWeight.bold),
                ),
                const Spacer(),
                SizedBox(
                  width: ekranGenisligi / 2,
                  height: ekranYuksekligi / 14,
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      d.buttonYazi,
                      style: TextStyle(color: yaziRenk1, fontSize: 18),
                    ),
                    style: TextButton.styleFrom(
                      backgroundColor: anaRenk,
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5))),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class Chip extends StatelessWidget {
  final String icerik;
  Chip({required this.icerik});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Text(
        "Cheese",
        style: TextStyle(color: yaziRenk1),
      ),
      style: TextButton.styleFrom(
        backgroundColor: anaRenk,
      ),
    );
  }
}
