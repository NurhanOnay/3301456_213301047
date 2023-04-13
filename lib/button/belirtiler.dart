import 'package:flutter/material.dart';

class Belirti extends StatelessWidget {
  final belirtiler = [
    'Göz teması kurmada güçlük çekmek',
    'Göz teması kurulsa bile çok kısa ve anlık olması',
    'Sözel olmayan davranış biçimlerinde yetersizlik',
    'Konuşma sırasında jest ve mimiklerin sınırlı sayıda kullanılması',
    'Başka insanlarla yakınlık sınırının ayarlanamaması',
    'Konuşurken ses seviyesini ayarlayamamak',
    'Arkadaş edinmede güçlük çekmek',
    'Arkadaşların genellikle ya çok büyük ya da çok küçük kişilerin olması',
    'Tek bir konu üzerinde arkadaşlık kurmak',
    'Kendi ile aynı yaşta olan çocuklarla oyun oynamada ve konuşmakta isteksizlik',
    'Yalnızlıktan hoşlanmak',
    'Dikkatleri üzerine çekmekten hoşlanmamak',
    'Övgü ve sevgi dolu sözlere tepkisiz kalmak',
    'Çocuğun kaldırma hareketine karşı tepki vermemesi ve ellerini uzatmaması',
    'İletişime geçmek isteyen kişileri cevapsız bırakmak',
    'Çevresindeki olaylara ilgi duymamak ve tepki göstermemek',
    'Karşı tarafın duygularını anlamamak',
    'Konuşmakta güçlük çekmek',
    '6 ile 12 ay arasında olan çocukların ismine tepki vermemesi',
    '10.aydan sonra bile el hareketleri ile kendini anlatamama',
    'Emekleme ve yuvarlanma gibi hareketlerde gecikme',
    'Başkalarının çıkardığı ses ve hareketleri taklit etmeme',
    'Parmağı ile istediklerini belirtmeme',
    'İki yaş ve üzeri çocukların sözcük söyleyememesi ve basit cümleler kuramaması',
    'Konuşmaya başladıktan sonra aynı kelimeleri kullanmak ve yanlışları düzeltememek',
    'Karşılıklı iletişime girememek',
    'Aynı konuları konuşma isteği',
    'Kendisine söylenen sözcükleri sürekli tekrarlamak',
    'Öğrendiği sözcükleri alakasız yerlerde kullanmak',
    'Kendi kendine sözcük uydurmak',
    'Evcilik, doktorculuk gibi belli bir olaya bağlı oyunları oynamada güçlük çekmek',
    'Oyuncakları başka bir oyuncakmış gibi oynayamamak',
    'Hayal gücünde yetersizlik',
    'Oyuncaklarla oynanması gerektiği gibi oynamamak',
    'Oyunlara karşı ilgisizlik',
    'Bir konuya karşı fazla ilgili ve takıntılı olmak',
    'Sıra dışı konulara ilgi duymak',
    'İlgili olduğu konu hakkındaki bütün detayları bilmek',
    'Bir düzen ve rutin konusuna takıntılı olma, rutini değiştirmeme, ısrarcı olma',
    'Günlük yapılan işlerin aynı sıra ile yapılmasını isteme',
    'Nesneleri sıraya dizmek, döndürmek',
    'Değişimlere karşı büyük tepki gösterme',
    'Değişimleri kabul etmesi için önce bilgi verilmesi gerekliliği',
    'Olağan dışı vücut hareketleri; parmak ucunda yürümek, çok yavaş hareket etmek, otururken sallanmak, kendi çevresinde dönmek, değişik bir bedene sahip olmak gibi',
    'El hareketlerinde değişiklik; ellerini sallamak, parmaklarına bakmak gibi',
    'Kullanılması gereken eşyaları farklı amaçlar doğrultusunda kullanmak',
    'Duyusal olarak eşyaların kokusu, görünüşü ile fazla ilgilenmek',
    'Hareketli eşyalara, oyuncaklara aşırı ilgi duymak',
    'Bazı eşyalara ya da oyuncaklara karşı takıntılı olmak, hep elinde tutmak ve ayrılmak istememek',
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Text("BELİRTİLER"),
            centerTitle: true,
          ),
    body: ListView.builder(
    itemCount: belirtiler.length,
    itemBuilder:(BuildContext context,index){
    return ListTile(
    title: Text(belirtiler[index]),
    leading: Icon(Icons.ac_unit_rounded),
      );
    },

    )
    ,


    ),);
  }

}

