import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/cupertino.dart';
import 'package:quiz_view/quiz_view.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'dart:math';
import 'constants.dart';
import 'dart:async';
import 'package:flip_card/flip_card.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Sayfa1(),
  ));
}

class Sayfa1 extends StatelessWidget {
  final oynatici = AudioCache();

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.blue.shade100,
          title: Text(
            'Bitirme Projesi',
            style: TextStyle(color: Colors.black),
          )),
      backgroundColor: Colors.white,
      body: Center(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
              child: RaisedButton(
            color: Colors.blue.shade100,
            child: Text('BAŞLA'),
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Sayfa2()),
            ),
          )),
          Container(
              child: RaisedButton(
            color: Colors.blue.shade100,
            child: Text('OTİZM'),
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Otizm()),
            ),
          )),
          Container(
              child: RaisedButton(
            color: Colors.blue.shade100,
            child: Text('BİZ KİMİZ'),
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => BizKimiz()),
            ),
          )),
        ],
      )),
    );
  }
}

class Otizm extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.blue.shade100,
          title: Text(
            "Otizm",
            style: TextStyle(color: Colors.black),
          )),
      backgroundColor: Colors.white,
      body: Center(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Container(
            child: Text(
              ' OTİZM NEDİR ?',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 40.0),
            ),
          ),
          Container(
            padding: EdgeInsets.all(20),
            child: Text(
                'Otizm tüm dünyada çok sayıda kişinin mağdur olduğu bir rahatsızlık. Çok erken yaşlarda ortaya çıkan otizm, kişilerin sınırlı ve sürekli tekrarlayan davranışlar sergilemesine neden oluyor ve bu sebeple kişinin sosyal etkileşimine ve iletişimine zarar veriyor. Ancak otizmli çocuklara yönelik uygulamalar ebeveynlere ve çocuklara yardımcı olabiliyor. Otizmli bireylerin öğrenme, etkileşim ve iletişim süreçleri farklılık gösterdiği için özellikle ebeveynler için birçok farklı kaynaktan destek olabilecek içerik, eğitim ve benzeri şeylere erişmek büyük önem taşıyor. Bu alanda teknolojiden de büyük oranda faydalanılabiliyor. Otizmli çocuklara yönelik uygulamalar teknolojinin nimetlerinden faydalanıyor.'),
          ),
        ],
      )),
    );
  }
}

class BizKimiz extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.blue.shade100,
          title: Text(
            "Biz Kimiz ?",
            style: TextStyle(color: Colors.black),
          )),
      backgroundColor: Colors.white,
      body: Center(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Container(
            child: Text(
              ' BİZ KİMİZ ?',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 40.0),
            ),
          ),
          Container(
            child: Text(
              '2020-2021 Eğitim Öğretim yılı Bitirme Projesi\n\nKonu:\nMobil Uygulama ile Otizm Spektrum Bozukluğu olan çocukların gelişimine destek sağlanması\n\nHazırlayan:\nÇağrı Sarıoğlu\nÜlkü Özmen\nKaan Döşkaya\n\nProje Danışmanı:\nDr. Öğr. Üyesi Mete Yağanoğlu\n\nAtatürk Üniversitesi\nMühendislik Fakültesi\nBilgisayar Mühendisliği',
              textAlign: TextAlign.center,
            ),
          ),
        ],
      )),
    );
  }
}

class Sayfa2 extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.blue.shade100,
          title: Text(
            "Oyunlar",
            style: TextStyle(color: Colors.black),
          )),
      backgroundColor: Colors.white,
      body: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            child: Text('SAYILAR',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 50.0,
                )),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                  width: 60,
                  child: RaisedButton(
                    child: Text('<'),
                    onPressed: () => Navigator.pop(context),
                    color: Colors.blue.shade100,
                  )),
              Container(
                width: 250,
                child: Text(
                  'Sayılara tıklayın ve hangi sayının nasıl telaffuz edildiğini öğrenin! \n\n Bu uygulamada öğrencinin sayıların telaffuzunu doğru bir şekilde öğrenmesi amaçlanmıştır.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 15.0,
                  ),
                ),
              ),
              Container(
                  width: 60,
                  child: RaisedButton(
                    color: Colors.blue.shade100,
                    child: Text('>'),
                    onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Sayfa3()),
                    ),
                  )),
            ],
          ),
          Container(
              child: RaisedButton(
            child: Text('SAYILARI ÖĞREN'),
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SayilarOyna()),
            ),
            color: Colors.blue.shade100,
          )),
          Container(
              child: RaisedButton(
            child: Text('OYNA'),
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => DemoApp()),
            ),
            color: Colors.blue.shade100,
          )),
        ],
      ),
    );
  }
}

class Sayfa3 extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.blue.shade100,
          title: Text(
            "Oyunlar",
            style: TextStyle(color: Colors.black),
          )),
      backgroundColor: Colors.white,
      body: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            child: Text('RENKLER',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 50.0,
                )),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                  width: 60,
                  child: RaisedButton(
                    child: Text('<'),
                    onPressed: () => Navigator.pop(context),
                    color: Colors.blue.shade100,
                  )),
              Container(
                width: 250,
                child: Text(
                  'Renklere tıklayın ve hangi rengin nasıl telaffuz edildiğini öğrenin! \n\n Bu uygulamada öğrencinin renklerin telaffuzunu doğru bir şekilde öğrenmesi amaçlanmıştır.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 15.0,
                  ),
                ),
              ),
              Container(
                  width: 60,
                  child: RaisedButton(
                    child: Text('>'),
                    onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Sayfa4()),
                    ),
                    color: Colors.blue.shade100,
                  )),
            ],
          ),
          Container(
              child: RaisedButton(
            color: Colors.blue.shade100,
            child: Text('RENKLERİ ÖĞREN'),
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => RenklerOyna()),
            ),
          )),
          Container(
              child: RaisedButton(
            child: Text('OYNA'),
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => DemoApp2()),
            ),
            color: Colors.blue.shade100,
          )),
        ],
      ),
    );
  }
}

class Sayfa4 extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.blue.shade100,
          title: Text(
            "Oyunlar",
            style: TextStyle(color: Colors.black),
          )),
      backgroundColor: Colors.white,
      body: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            child: Text('EL-GÖZ',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 50.0,
                )),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                  width: 60,
                  child: RaisedButton(
                    child: Text('<'),
                    onPressed: () => Navigator.pop(context),
                    color: Colors.blue.shade100,
                  )),
              Container(
                width: 250,
                child: Text(
                  'Meyvelere tıklayın ve doğru renklere sürükleyin! \n\n Bu uygulamada öğrencinin el-göz koordinasyonunun pekişmesi amaçlanmıştır.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 15.0,
                  ),
                ),
              ),
              Container(
                  width: 60,
                  child: RaisedButton(
                    child: Text('>'),
                    onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Sayfa5()),
                    ),
                    color: Colors.blue.shade100,
                  )),
            ],
          ),
          Container(
            padding:EdgeInsets.only(bottom:130),
              child: RaisedButton(
            color: Colors.blue.shade100,
            child: Text('Oyna'),
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ElGoz()),
            ),
          )),
        ],
      ),
    );
  }
}

class Sayfa5 extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.blue.shade100,
          title: Text(
            "Oyunlar",
            style: TextStyle(color: Colors.black),
          )),
      backgroundColor: Colors.white,
      body: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            child: Text('HAFIZA',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 50.0,
                )),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                  width: 60,
                  child: RaisedButton(
                    child: Text('<'),
                    onPressed: () => Navigator.pop(context),
                    color: Colors.blue.shade100,
                  )),
              Container(
                width: 250,
                child: Text(
                  'Basit bir hafıza oyunu! \n\n En kısa sürede aynı rakamları eşleştirmeye çalışın! \n\n\ Bu uygulamada öğrencinin egzersiz yapıp, hafızasını dinç tutması amaçlanmıştır. ',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 15.0,
                  ),
                ),
              ),
              Container(
                  width: 60,
                  child: RaisedButton(
                    child: Text('>'),
                    onPressed: () {},
                    color: Colors.blue.shade100,
                  )),
            ],
          ),
          Container(
            padding:EdgeInsets.only(bottom:130),
              child: RaisedButton(
            color: Colors.blue.shade100,
            child: Text('Oyna'),
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Hafiza()),
            ),
          )),
        ],
      ),
    );
  }
}

class SayilarOyna extends StatelessWidget {
  final oynatici = AudioCache();
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.shade300,
      child: SafeArea(
          child: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: FlatButton(
                    padding: EdgeInsets.all(5),
                    onPressed: () {
                      oynatici.play('Bir.mp3');
                    },
                    child: Image.asset('assets/bir.jpeg'),
                  ),
                ),
                Expanded(
                  child: FlatButton(
                    padding: EdgeInsets.all(5),
                    onPressed: () {
                      oynatici.play('İki.mp3');
                    },
                    child: Image.asset('assets/iki.jpeg'),
                  ),
                ),
                Expanded(
                  child: FlatButton(
                    padding: EdgeInsets.all(5),
                    onPressed: () {
                      oynatici.play('Üç.mp3');
                    },
                    child: Image.asset('assets/üç.jpeg'),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: FlatButton(
                    padding: EdgeInsets.all(5),
                    onPressed: () {
                      oynatici.play('Dört.mp3');
                    },
                    child: Image.asset('assets/dört.jpeg'),
                  ),
                ),
                Expanded(
                  child: FlatButton(
                    padding: EdgeInsets.all(5),
                    onPressed: () {
                      oynatici.play('Beş.mp3');
                    },
                    child: Image.asset('assets/beş.jpeg'),
                  ),
                ),
                Expanded(
                  child: FlatButton(
                    padding: EdgeInsets.all(5),
                    onPressed: () {
                      oynatici.play('Altı.mp3');
                    },
                    child: Image.asset('assets/altı.jpeg'),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: FlatButton(
                    padding: EdgeInsets.all(5),
                    onPressed: () {
                      oynatici.play('Yedi.mp3');
                    },
                    child: Image.asset('assets/yedi.jpeg'),
                  ),
                ),
                Expanded(
                  child: FlatButton(
                    padding: EdgeInsets.all(5),
                    onPressed: () {
                      oynatici.play('Sekiz.mp3');
                    },
                    child: Image.asset('assets/sekiz.jpeg'),
                  ),
                ),
                Expanded(
                  child: FlatButton(
                    padding: EdgeInsets.all(5),
                    onPressed: () {
                      oynatici.play('Dokuz.mp3');
                    },
                    child: Image.asset('assets/dokuz.jpeg'),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: FlatButton(
                    padding: EdgeInsets.all(5),
                    onPressed: () {
                      oynatici.play('On.mp3');
                    },
                    child: Image.asset('assets/on.jpeg'),
                  ),
                ),
                Expanded(
                  child: FlatButton(
                    padding: EdgeInsets.all(5),
                    onPressed: () {
                      oynatici.play('On Bir.mp3');
                    },
                    child: Image.asset('assets/onbir.jpeg'),
                  ),
                ),
                Expanded(
                  child: FlatButton(
                    padding: EdgeInsets.all(5),
                    onPressed: () {
                      oynatici.play('On İki.mp3');
                    },
                    child: Image.asset('assets/oniki.jpeg'),
                  ),
                ),
              ],
            ),
          ),
        ],
      )),
    );
  }
}

class RenklerOyna extends StatelessWidget {
  final oynatici = AudioCache();
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.shade300,
      child: SafeArea(
          child: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: FlatButton(
                    padding: EdgeInsets.all(5),
                    onPressed: () {
                      oynatici.play('beyaz.mp3');
                    },
                    child: Image.asset('assets/beyaz.jpeg'),
                  ),
                ),
                Expanded(
                  child: FlatButton(
                    padding: EdgeInsets.all(5),
                    onPressed: () {
                      oynatici.play('gri.mp3');
                    },
                    child: Image.asset('assets/gri.jpeg'),
                  ),
                ),
                Expanded(
                  child: FlatButton(
                    padding: EdgeInsets.all(5),
                    onPressed: () {
                      oynatici.play('yeşil.mp3');
                    },
                    child: Image.asset('assets/yesil.jpeg'),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: FlatButton(
                    padding: EdgeInsets.all(5),
                    onPressed: () {
                      oynatici.play('Mavi.mp3');
                    },
                    child: Image.asset('assets/mavi.jpeg'),
                  ),
                ),
                Expanded(
                  child: FlatButton(
                    padding: EdgeInsets.all(5),
                    onPressed: () {
                      oynatici.play('lacivert.mp3');
                    },
                    child: Image.asset('assets/lacivert.jpeg'),
                  ),
                ),
                Expanded(
                  child: FlatButton(
                    padding: EdgeInsets.all(5),
                    onPressed: () {
                      oynatici.play('kırmızı.mp3');
                    },
                    child: Image.asset('assets/kirmizi.jpeg'),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: FlatButton(
                    padding: EdgeInsets.all(5),
                    onPressed: () {
                      oynatici.play('siyah.mp3');
                    },
                    child: Image.asset('assets/siyah.jpeg'),
                  ),
                ),
                Expanded(
                  child: FlatButton(
                    padding: EdgeInsets.all(5),
                    onPressed: () {
                      oynatici.play('turuncu.mp3');
                    },
                    child: Image.asset('assets/turuncu.jpeg'),
                  ),
                ),
                Expanded(
                  child: FlatButton(
                    padding: EdgeInsets.all(5),
                    onPressed: () {
                      oynatici.play('sarı.mp3');
                    },
                    child: Image.asset('assets/sari.jpeg'),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: FlatButton(
                    padding: EdgeInsets.all(5),
                    onPressed: () {
                      oynatici.play('pembe.mp3');
                    },
                    child: Image.asset('assets/tozpembe.jpeg'),
                  ),
                ),
                Expanded(
                  child: FlatButton(
                    padding: EdgeInsets.all(5),
                    onPressed: () {
                      oynatici.play('mor.mp3');
                    },
                    child: Image.asset('assets/mor.jpeg'),
                  ),
                ),
                Expanded(
                  child: FlatButton(
                    padding: EdgeInsets.all(5),
                    onPressed: () {
                      oynatici.play('turkuaz.mp3');
                    },
                    child: Image.asset('assets/turkuaz.jpeg'),
                  ),
                ),
              ],
            ),
          ),
        ],
      )),
    );
  }
}

class DemoApp extends StatefulWidget {
  @override
  _DemoAppState createState() => _DemoAppState();
}

class _DemoAppState extends State<DemoApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text(
          'Sorular',
          style: TextStyle(letterSpacing: 2.0),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              QuizView(
                  image: Container(
                    height: 150,
                    width: 200,
                    child: Image.asset(
                      'assets/1bir.jpg',
                      fit: BoxFit.fill,
                    ),
                  ),
                  showCorrect: true,
                  questionTag: 'Soru 1',
                  questionColor: Colors.black,
                  tagColor: Colors.yellowAccent,
                  backgroundColor: Colors.white70,
                  tagBackgroundColor: Colors.red.shade300,
                  answerColor: Colors.white,
                  answerBackgroundColor: Colors.deepPurple,
                  question: 'Resimde kaç tane köpek var?',
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  rightAnswer: '1',
                  wrongAnswers: ['3', '5'],
                  onRightAnswer: () => print('DOĞRU! :)'),
                  onWrongAnswer: () {
                    Alert(
                      context: context,
                      title: 'YANLIS :(',
                    ).show();
                  }),
              SizedBox(
                height: 10,
              ),
              QuizView(
                  image: Container(
                    height: 150,
                    width: 200,
                    child: Image.asset(
                      'assets/2iki.jpg',
                      fit: BoxFit.fill,
                    ),
                  ),
                  showCorrect: true,
                  questionTag: 'Soru 2',
                  questionColor: Colors.black,
                  tagColor: Colors.yellowAccent,
                  backgroundColor: Colors.white70,
                  tagBackgroundColor: Colors.red.shade300,
                  answerColor: Colors.white,
                  answerBackgroundColor: Colors.deepPurple,
                  question: 'Resimde kaç tane Kedi var?',
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  rightAnswer: '2',
                  wrongAnswers: ['4', '6'],
                  onRightAnswer: () => print('DOĞRU! :)'),
                  onWrongAnswer: () {
                    Alert(
                      context: context,
                      title: 'Yanlış :(',
                    ).show();
                  }),
              SizedBox(
                height: 10,
              ),
              QuizView(
                  image: Container(
                    height: 150,
                    width: 200,
                    child: Image.asset(
                      'assets/3uc.jpg',
                      fit: BoxFit.fill,
                    ),
                  ),
                  showCorrect: true,
                  questionTag: 'Soru 3',
                  questionColor: Colors.black,
                  tagColor: Colors.yellowAccent,
                  backgroundColor: Colors.white70,
                  tagBackgroundColor: Colors.red.shade300,
                  answerColor: Colors.white,
                  answerBackgroundColor: Colors.deepPurple,
                  question: 'Resimde kaç tane Armut var?',
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  rightAnswer: '3',
                  wrongAnswers: ['5', '7'],
                  onRightAnswer: () => print('DOĞRU! :)'),
                  onWrongAnswer: () {
                    Alert(
                      context: context,
                      title: 'Yanlış :(',
                    ).show();
                  }),
              SizedBox(
                height: 10,
              ),
              QuizView(
                  image: Container(
                    height: 150,
                    width: 200,
                    child: Image.asset(
                      'assets/4dort.jpg',
                      fit: BoxFit.fill,
                    ),
                  ),
                  showCorrect: true,
                  questionTag: 'Soru 4',
                  questionColor: Colors.black,
                  tagColor: Colors.yellowAccent,
                  backgroundColor: Colors.white70,
                  tagBackgroundColor: Colors.red.shade300,
                  answerColor: Colors.white,
                  answerBackgroundColor: Colors.deepPurple,
                  question: 'Resimde kaç tane Elma var?',
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  rightAnswer: '4',
                  wrongAnswers: ['10', '7'],
                  onRightAnswer: () => print('DOĞRU! :)'),
                  onWrongAnswer: () {
                    Alert(
                      context: context,
                      title: 'Yanlış :(',
                    ).show();
                  }),
              SizedBox(
                height: 10,
              ),
              QuizView(
                  image: Container(
                    height: 150,
                    width: 200,
                    child: Image.asset(
                      'assets/5bes.jpg',
                      fit: BoxFit.fill,
                    ),
                  ),
                  showCorrect: true,
                  questionTag: 'Soru 5',
                  questionColor: Colors.black,
                  tagColor: Colors.yellowAccent,
                  backgroundColor: Colors.white70,
                  tagBackgroundColor: Colors.red.shade300,
                  answerColor: Colors.white,
                  answerBackgroundColor: Colors.deepPurple,
                  question: 'Resimde kaç tane Çiçek var?',
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  rightAnswer: '5',
                  wrongAnswers: ['8', '3'],
                  onRightAnswer: () => print('DOĞRU! :)'),
                  onWrongAnswer: () {
                    Alert(
                      context: context,
                      title: 'Yanlış :(',
                    ).show();
                  }),
              SizedBox(
                height: 10,
              ),
              QuizView(
                  image: Container(
                    height: 150,
                    width: 300,
                    child: Image.asset(
                      'assets/6alti.jpg',
                      fit: BoxFit.fill,
                    ),
                  ),
                  showCorrect: true,
                  questionTag: 'Soru 6',
                  questionColor: Colors.black,
                  tagColor: Colors.yellowAccent,
                  backgroundColor: Colors.white70,
                  tagBackgroundColor: Colors.red.shade300,
                  answerColor: Colors.white,
                  answerBackgroundColor: Colors.deepPurple,
                  question: 'Resimde kaç tane Kuş var?',
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  rightAnswer: '6',
                  wrongAnswers: ['3', '7'],
                  onRightAnswer: () => print('DOĞRU! :)'),
                  onWrongAnswer: () {
                    Alert(
                      context: context,
                      title: 'Yanlış :(',
                    ).show();
                  }),
              SizedBox(
                height: 10,
              ),
              QuizView(
                  image: Container(
                    height: 150,
                    width: 300,
                    child: Image.asset(
                      'assets/7yedi.jpg',
                      fit: BoxFit.fill,
                    ),
                  ),
                  showCorrect: true,
                  questionTag: 'Soru 7',
                  questionColor: Colors.black,
                  tagColor: Colors.yellowAccent,
                  backgroundColor: Colors.white70,
                  tagBackgroundColor: Colors.red.shade300,
                  answerColor: Colors.white,
                  answerBackgroundColor: Colors.deepPurple,
                  question: 'Resimde kaç tane Çizgi Film karakteri var?',
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  rightAnswer: '7',
                  wrongAnswers: ['2', '6'],
                  onRightAnswer: () => print('DOĞRU! :)'),
                  onWrongAnswer: () {
                    Alert(
                      context: context,
                      title: 'Yanlış :(',
                    ).show();
                  }),
              SizedBox(
                height: 10,
              ),
              QuizView(
                  image: Container(
                    height: 150,
                    width: 250,
                    child: Image.asset(
                      'assets/8sekiz.jpg',
                      fit: BoxFit.fill,
                    ),
                  ),
                  showCorrect: true,
                  questionTag: 'Soru 8',
                  questionColor: Colors.black,
                  tagColor: Colors.yellowAccent,
                  backgroundColor: Colors.white70,
                  tagBackgroundColor: Colors.red.shade300,
                  answerColor: Colors.white,
                  answerBackgroundColor: Colors.deepPurple,
                  question: 'Resimde kaç tane Ayva var?',
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  rightAnswer: '8',
                  wrongAnswers: ['1', '5'],
                  onRightAnswer: () => print('DOĞRU! :)'),
                  onWrongAnswer: () {
                    Alert(
                      context: context,
                      title: 'Yanlış :(',
                    ).show();
                  }),
              SizedBox(
                height: 10,
              ),
              QuizView(
                  image: Container(
                    height: 150,
                    width: 300,
                    child: Image.asset(
                      'assets/9dokuz.jpg',
                      fit: BoxFit.fill,
                    ),
                  ),
                  showCorrect: true,
                  questionTag: 'Soru 9',
                  questionColor: Colors.black,
                  tagColor: Colors.yellowAccent,
                  backgroundColor: Colors.white70,
                  tagBackgroundColor: Colors.red.shade300,
                  answerColor: Colors.white,
                  answerBackgroundColor: Colors.deepPurple,
                  question: 'Resimde kaç tane Kelebek var?',
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  rightAnswer: '9',
                  wrongAnswers: ['7', '3'],
                  onRightAnswer: () => print('DOĞRU! :)'),
                  onWrongAnswer: () {
                    Alert(
                      context: context,
                      title: 'Yanlış :(',
                    ).show();
                  }),
              SizedBox(
                height: 10,
              ),
              QuizView(
                  image: Container(
                    height: 150,
                    width: 300,
                    child: Image.asset(
                      'assets/10on.jpg',
                      fit: BoxFit.fill,
                    ),
                  ),
                  showCorrect: true,
                  questionTag: 'Soru 10',
                  questionColor: Colors.black,
                  tagColor: Colors.yellowAccent,
                  backgroundColor: Colors.white70,
                  tagBackgroundColor: Colors.red.shade300,
                  answerColor: Colors.white,
                  answerBackgroundColor: Colors.deepPurple,
                  question: 'Resimde kaç tane Çocuk var?',
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  rightAnswer: '10',
                  wrongAnswers: ['6', '4'],
                  onRightAnswer: () => print('DOĞRU! :)'),
                  onWrongAnswer: () {
                    Alert(
                      context: context,
                      title: 'Yanlış :(',
                    ).show();
                  }),
            ],
          ),
        ),
      ),
    );
  }
}

class DemoApp2 extends StatefulWidget {
  @override
  _DemoAppState2 createState() => _DemoAppState2();
}

class _DemoAppState2 extends State<DemoApp2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text(
          'Sorular',
          style: TextStyle(letterSpacing: 2.0),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              QuizView(
                  image: Container(
                    height: 150,
                    width: 200,
                    child: Image.asset(
                      'assets/Beyaz1.jpeg',
                      fit: BoxFit.fill,
                    ),
                  ),
                  showCorrect: true,
                  questionTag: 'Soru 1',
                  questionColor: Colors.black,
                  tagColor: Colors.yellowAccent,
                  backgroundColor: Colors.white70,
                  tagBackgroundColor: Colors.red.shade300,
                  answerColor: Colors.white,
                  answerBackgroundColor: Colors.deepPurple,
                  question: 'Bu dolap ne renk?',
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  rightAnswer: 'Beyaz',
                  wrongAnswers: ['Kırmızı', 'Mavi'],
                  onRightAnswer: () => print('DOĞRU! :)'),
                  onWrongAnswer: () {
                    Alert(
                      context: context,
                      title: 'YANLIS :(',
                    ).show();
                  }),
              SizedBox(
                height: 10,
              ),
              QuizView(
                  image: Container(
                    height: 150,
                    width: 200,
                    child: Image.asset(
                      'assets/Gri2.jpeg',
                      fit: BoxFit.fill,
                    ),
                  ),
                  showCorrect: true,
                  questionTag: 'Soru 2',
                  questionColor: Colors.black,
                  tagColor: Colors.yellowAccent,
                  backgroundColor: Colors.white70,
                  tagBackgroundColor: Colors.red.shade300,
                  answerColor: Colors.white,
                  answerBackgroundColor: Colors.deepPurple,
                  question: 'Bu kedi ne renk?',
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  rightAnswer: 'Gri',
                  wrongAnswers: ['Beyaz', 'Turuncu'],
                  onRightAnswer: () => print('DOĞRU! :)'),
                  onWrongAnswer: () {
                    Alert(
                      context: context,
                      title: 'Yanlış :(',
                    ).show();
                  }),
              SizedBox(
                height: 10,
              ),
              QuizView(
                  image: Container(
                    height: 150,
                    width: 200,
                    child: Image.asset(
                      'assets/kirmizi3.png',
                      fit: BoxFit.fill,
                    ),
                  ),
                  showCorrect: true,
                  questionTag: 'Soru 3',
                  questionColor: Colors.black,
                  tagColor: Colors.yellowAccent,
                  backgroundColor: Colors.white70,
                  tagBackgroundColor: Colors.red.shade300,
                  answerColor: Colors.white,
                  answerBackgroundColor: Colors.deepPurple,
                  question: 'Bu elma ne renk?',
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  rightAnswer: 'Kırmızı',
                  wrongAnswers: ['Siyah', 'Mavi'],
                  onRightAnswer: () => print('DOĞRU! :)'),
                  onWrongAnswer: () {
                    Alert(
                      context: context,
                      title: 'Yanlış :(',
                    ).show();
                  }),
              SizedBox(
                height: 10,
              ),
              QuizView(
                  image: Container(
                    height: 150,
                    width: 200,
                    child: Image.asset(
                      'assets/turuncu4.jpeg',
                      fit: BoxFit.fill,
                    ),
                  ),
                  showCorrect: true,
                  questionTag: 'Soru 4',
                  questionColor: Colors.black,
                  tagColor: Colors.yellowAccent,
                  backgroundColor: Colors.white70,
                  tagBackgroundColor: Colors.red.shade300,
                  answerColor: Colors.white,
                  answerBackgroundColor: Colors.deepPurple,
                  question: 'Bu defter ne renk?',
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  rightAnswer: 'Turuncu',
                  wrongAnswers: ['Mavi', 'Gri'],
                  onRightAnswer: () => print('DOĞRU! :)'),
                  onWrongAnswer: () {
                    Alert(
                      context: context,
                      title: 'Yanlış :(',
                    ).show();
                  }),
              SizedBox(
                height: 10,
              ),
              QuizView(
                  image: Container(
                    height: 150,
                    width: 200,
                    child: Image.asset(
                      'assets/mor5.jpeg',
                      fit: BoxFit.fill,
                    ),
                  ),
                  showCorrect: true,
                  questionTag: 'Soru 5',
                  questionColor: Colors.black,
                  tagColor: Colors.yellowAccent,
                  backgroundColor: Colors.white70,
                  tagBackgroundColor: Colors.red.shade300,
                  answerColor: Colors.white,
                  answerBackgroundColor: Colors.deepPurple,
                  question: 'Bu tişört ne renk?',
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  rightAnswer: 'Mor',
                  wrongAnswers: ['Sarı', 'Beyaz'],
                  onRightAnswer: () => print('DOĞRU! :)'),
                  onWrongAnswer: () {
                    Alert(
                      context: context,
                      title: 'Yanlış :(',
                    ).show();
                  }),
              SizedBox(
                height: 10,
              ),
              QuizView(
                  image: Container(
                    height: 150,
                    width: 300,
                    child: Image.asset(
                      'assets/mavi6.png',
                      fit: BoxFit.fill,
                    ),
                  ),
                  showCorrect: true,
                  questionTag: 'Soru 6',
                  questionColor: Colors.black,
                  tagColor: Colors.yellowAccent,
                  backgroundColor: Colors.white70,
                  tagBackgroundColor: Colors.red.shade300,
                  answerColor: Colors.white,
                  answerBackgroundColor: Colors.deepPurple,
                  question: 'Bu kalem ne renk?',
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  rightAnswer: 'Mavi',
                  wrongAnswers: ['Beyaz', 'Yeşil'],
                  onRightAnswer: () => print('DOĞRU! :)'),
                  onWrongAnswer: () {
                    Alert(
                      context: context,
                      title: 'Yanlış :(',
                    ).show();
                  }),
              SizedBox(
                height: 10,
              ),
              QuizView(
                  image: Container(
                    height: 150,
                    width: 300,
                    child: Image.asset(
                      'assets/sari7.png',
                      fit: BoxFit.fill,
                    ),
                  ),
                  showCorrect: true,
                  questionTag: 'Soru 7',
                  questionColor: Colors.black,
                  tagColor: Colors.yellowAccent,
                  backgroundColor: Colors.white70,
                  tagBackgroundColor: Colors.red.shade300,
                  answerColor: Colors.white,
                  answerBackgroundColor: Colors.deepPurple,
                  question: 'Bu civciv ne renk?',
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  rightAnswer: 'Sarı',
                  wrongAnswers: ['Gri', 'Mor'],
                  onRightAnswer: () => print('DOĞRU! :)'),
                  onWrongAnswer: () {
                    Alert(
                      context: context,
                      title: 'Yanlış :(',
                    ).show();
                  }),
              SizedBox(
                height: 10,
              ),
              QuizView(
                  image: Container(
                    height: 150,
                    width: 250,
                    child: Image.asset(
                      'assets/yesil8.png',
                      fit: BoxFit.fill,
                    ),
                  ),
                  showCorrect: true,
                  questionTag: 'Soru 8',
                  questionColor: Colors.black,
                  tagColor: Colors.yellowAccent,
                  backgroundColor: Colors.white70,
                  tagBackgroundColor: Colors.red.shade300,
                  answerColor: Colors.white,
                  answerBackgroundColor: Colors.deepPurple,
                  question: 'Bu çimen ne renk?',
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  rightAnswer: 'Yeşil',
                  wrongAnswers: ['Beyaz', 'Siyah'],
                  onRightAnswer: () => print('DOĞRU! :)'),
                  onWrongAnswer: () {
                    Alert(
                      context: context,
                      title: 'Yanlış :(',
                    ).show();
                  }),
              SizedBox(
                height: 10,
              ),
              QuizView(
                  image: Container(
                    height: 150,
                    width: 300,
                    child: Image.asset(
                      'assets/pembe9.jpeg',
                      fit: BoxFit.fill,
                    ),
                  ),
                  showCorrect: true,
                  questionTag: 'Soru 9',
                  questionColor: Colors.black,
                  tagColor: Colors.yellowAccent,
                  backgroundColor: Colors.white70,
                  tagBackgroundColor: Colors.red.shade300,
                  answerColor: Colors.white,
                  answerBackgroundColor: Colors.deepPurple,
                  question: 'Bu çanta ne renk?',
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  rightAnswer: 'Pembe',
                  wrongAnswers: ['Beyaz', 'Gri'],
                  onRightAnswer: () => print('DOĞRU! :)'),
                  onWrongAnswer: () {
                    Alert(
                      context: context,
                      title: 'Yanlış :(',
                    ).show();
                  }),
              SizedBox(
                height: 10,
              ),
              QuizView(
                  image: Container(
                    height: 150,
                    width: 300,
                    child: Image.asset(
                      'assets/siyah10.PNG',
                      fit: BoxFit.fill,
                    ),
                  ),
                  showCorrect: true,
                  questionTag: 'Soru 10',
                  questionColor: Colors.black,
                  tagColor: Colors.yellowAccent,
                  backgroundColor: Colors.white70,
                  tagBackgroundColor: Colors.red.shade300,
                  answerColor: Colors.white,
                  answerBackgroundColor: Colors.deepPurple,
                  question: 'Bu bardak ne renk?',
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  rightAnswer: 'Siyah',
                  wrongAnswers: ['Kırmızı', 'Mavi'],
                  onRightAnswer: () => print('DOĞRU! :)'),
                  onWrongAnswer: () {
                    Alert(
                      context: context,
                      title: 'Yanlış :(',
                    ).show();
                  }),
            ],
          ),
        ),
      ),
    );
  }
}

class ElGoz extends StatefulWidget {
  ElGoz({Key key}) : super(key: key);

  createState() => ElGozState();
}

class ElGozState extends State<ElGoz> {
  /// Map to keep track of score
  final Map<String, bool> score = {};

  /// Choices for game
  final Map choices = {
    '🍏': Colors.green,
    '🍋': Colors.yellow,
    '🍅': Colors.red,
    '🍇': Colors.purple,
    '🥥': Colors.brown,
    '🥕': Colors.orange
  };

  // Random seed to shuffle order of items.
  int seed = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Başarı ${score.length} / 6',style: TextStyle(color: Colors.black),),
          backgroundColor: Colors.blue.shade100),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.refresh),
        onPressed: () {
          setState(() {
            score.clear();
            seed++;
          });
        },
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: choices.keys.map((emoji) {
                return Draggable<String>(
                  data: emoji,
                  child: Emoji(emoji: score[emoji] == true ? '✅' : emoji),
                  feedback: Emoji(emoji: emoji),
                  childWhenDragging: Emoji(emoji: '🌱'),//🌱
                );
              }).toList()),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children:
                choices.keys.map((emoji) => _buildDragTarget(emoji)).toList()
                  ..shuffle(Random(seed)),
          )
        ],
      ),
    );
  }

  Widget _buildDragTarget(emoji) {
    final oynatici = AudioCache();
    
    return DragTarget<String>(
      builder: (BuildContext context, List<String> incoming, List rejected) {
        if (score[emoji] == true) {
          return Container(
            color: Colors.white,
            child: Text('Tebrikler!'),
            alignment: Alignment.center,
            height: 80,
            width: 200,
          );
        } else {
          return Container(color: choices[emoji], height: 80, width: 200);
        }
      },
      onWillAccept: (data) => data == emoji,
      onAccept: (data) {
        setState(() {
          score[emoji] = true;
          oynatici.play('dogru.mp3');
        });
      },
      onLeave: (data) {},
    );
  }
}

class Emoji extends StatelessWidget {
  Emoji({Key key, this.emoji}) : super(key: key);

  final String emoji;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Container(
        alignment: Alignment.center,
        height: 60,
        padding: EdgeInsets.all(0.0),
        child: Text(
          emoji,
          style: TextStyle(color: Colors.black, fontSize: 50),
        ),
      ),
    );
  }
}



int level = 12;

class Hafiza extends StatefulWidget {
  
  final int size;

  const Hafiza({Key key, this.size = 12}) : super(key: key);
  @override
  _HafizaState createState() => _HafizaState();
}

class _HafizaState extends State<Hafiza> {
  List<GlobalKey<FlipCardState>> cardStateKeys = [];
  List<bool> cardFlips = [];
  List<String> data = [];
  int previousIndex = -1;
  bool flip = false;

  int time = 0;
  Timer timer;

  @override
  void initState() {
    super.initState();
    for (var i = 0; i < widget.size; i++) {
      cardStateKeys.add(GlobalKey<FlipCardState>());
      cardFlips.add(true);
    }
    for (var i = 0; i < widget.size ~/ 2; i++) {
      data.add(i.toString());
    }
    for (var i = 0; i < widget.size ~/ 2; i++) {
      data.add(i.toString());
    }
    startTimer();
    data.shuffle();
  }

  startTimer() {
    timer = Timer.periodic(Duration(seconds: 1), (t) {
      setState(() {
        time = time + 1;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  "$time",
                  style: Theme.of(context).textTheme.display2,
                ),
              ),
              Theme(
                data: ThemeData.dark(),
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: GridView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                    ),
                    itemBuilder: (context, index) => FlipCard(
                      key: cardStateKeys[index],
                      onFlip: () {
                        if (!flip) {
                          flip = true;
                          previousIndex = index;
                        } else {
                          flip = false;
                          if (previousIndex != index) {
                            if (data[previousIndex] != data[index]) {
                              cardStateKeys[previousIndex]
                                  .currentState
                                  .toggleCard();
                              previousIndex = index;
                            } else {
                              cardFlips[previousIndex] = false;
                              cardFlips[index] = false;
                              print(cardFlips);

                              if (cardFlips.every((t) => t == false)) {
                                print("Won");
                                showResult();
                              }
                            }
                          }
                        }
                      },
                      direction: FlipDirection.HORIZONTAL,
                      flipOnTouch: cardFlips[index],
                      front: Container(
                        margin: EdgeInsets.all(4.0),
                        color: Colors.blue.withOpacity(0.3),
                      ),
                      back: Container(
                        margin: EdgeInsets.all(4.0),
                        color: Colors.blue,
                        child: Center(
                          child: Text(
                            "${data[index]}",
                            style: Theme.of(context).textTheme.display2,
                          ),
                        ),
                      ),
                    ),
                    itemCount: data.length,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  showResult() {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => AlertDialog(
        title: Text("TEBRİKLER!"),
        content: Text(
          "Süre: $time",
          style: Theme.of(context).textTheme.display2,
        ),
        actions: <Widget>[
          FlatButton(
            onPressed: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) => Hafiza(
                    size: level,
                  ),
                ),
              );
              
            },
            child: Text("Tekrar Oyna"),
          ),
        ],
      ),
    );
  }
}