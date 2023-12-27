import 'package:flutter/material.dart';
import 'package:flutter_application_1/questions_screen.dart';
import 'package:flutter_application_1/start_screen.dart';

/*
Quiz widgetımız stateful bir widget
2 sınıfla çalışacağız dolayısıyla
aşağıda state sınıfı var
 */

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  Widget? activeScreen; //değişkenlerde widgetları tutabilirsin
  //widgetlar objectlerdir dolayısıyla nesneler de dartta gayet normal valuelardır.
  //var kullanınca direkt türünü alıyor StartScreen diye o yüzden daha az sınırlı yani özgür olacak şekilde Widget yaptık türünü

  @override
  void initState() {
    //initState çalıştığında buildden önce çalışır tabiki
    //state sınıflarında kullanabileceğimiz state ilk olarak çalıştığında 1 kez çalışır initState böylece initialize işleri yapılabilir
    //initState object oluşturulmalarından sonra çalışır yani activeScreen yukarıdaki nulldır yaratılmıştır şimdi değerini alır
    activeScreen = StartScreen(switchScreen);
    super.initState(); //bunu da tutmalıyız initState in çalıştığını ek initialization işleri için verilir
  }

/*
There are three extremely important (stateful) widget lifecycle methods you should be aware of:

initState(): Executed by Flutter when the StatefulWidget's State object is initialized

build(): Executed by Flutter when the Widget is built for the first time AND after setState() was called

dispose(): Executed by Flutter right before the Widget will be deleted (e.g., because it was displayed conditionally)
 */

  void switchScreen() {
    setState(() {
      activeScreen = const QuestionsScreen();
    });
  }

  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.black,
                Colors.white,
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: activeScreen,
        ),
      ),
    );
  }
}
