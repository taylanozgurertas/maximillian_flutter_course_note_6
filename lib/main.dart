import 'package:flutter/material.dart';
import 'package:flutter_application_1/quiz.dart';

void main() {
  runApp(const Quiz());
}

/*
main dartta runApp widget bekler 
Quiz() widgetımızı çalıştırdık 
o ilk olarak StartScreen widgetını çalıştıracak orada bir ayarlama yaptık fonksiyonla vs.
daha sonra StartScreende bir butona basıldığında Quiz sınıfındaki fonksiyonu oraya aktardığımızdan 
activeScreen degerini degistirerek setState kullanarak gosterilecek bodyde container var containerın cocugu olarak
gosterilecek widgetı belirlemis oluyoruz boylece butona tıklayınca degisim gerceklesiyor 

yani bir sayfa gosterimi var sayfada butona tıklayınca varolan sayfanın yerini baska bir sayfa gosterimi alıyor gibi dusun.
 */