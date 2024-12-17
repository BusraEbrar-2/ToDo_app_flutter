import 'package:flutter/material.dart';

void main() => runApp(MyApp()) ;

class MyApp extends StatelessWidget {

  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ToDo app',
     home :  Iskele() ,
    
    );
  }
}

class Iskele extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar : AppBar (title : Text ('Liste'),),
body : AnaEkran(),
    );
  }
}

class AnaEkran extends StatefulWidget {
  

  @override
  State<AnaEkran> createState() => _AnaEkranState();
}

class _AnaEkranState extends State<AnaEkran> {

  TextEditingController t1 = TextEditingController() ;
 List alisverisListesi = [];


 elemanEkle (){
  setState(() {
    alisverisListesi.add(t1.text) ;
    t1.clear() ;// üstüne yeni bişi yazmka için 
  });
 }
  elemanCikar (){
  setState(() {
    alisverisListesi.remove(t1.text) ;
    t1.clear() ;// üstüne yeni bişi yazmka için 
  });
 }



  @override
  Widget build(BuildContext context) {
    return Container(
      child : Column(
children: <Widget>[
  
  // flexible  column 1 . widget içine koyduğumuz 
  Flexible(   // düznli görünüm sağlamak 
    child: ListView.builder (
      // zromulu olanlar = ic ib 
        // kaydırılabilir olması için 
    itemCount: alisverisListesi.length,
    itemBuilder: // liste görünümü yapısı oluşturdu 
    (context,indeksNumarasi) => ListTile( // liste elamnlarını düzenli göstermek için 
      // context  Widget'ın bulunduğu konumla ilgili bağlamı sağlar.
      // 
      title: Text (alisverisListesi[indeksNumarasi]), 
      // 0. indeks süt 
    ) ,  ), ),
  




TextField( // 2. metin  grişini almak için 
  controller : t1 ,  // metni kontrol etmek okuma güncelleme
),

         ElevatedButton(onPressed:elemanEkle,child : Text ("Ekle"),),
         ElevatedButton(onPressed:elemanCikar, child : Text("Çıkar"), ), // 3 ve 4. 


],

      ),
    );
  }
}



