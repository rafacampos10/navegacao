import 'package:flutter/material.dart';
import 'package:navegation/one_page.dart';
import 'package:navegation/two_page.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
primaryColor: Colors.grey,
      ),
      initialRoute: "/",
      //não pode colocar o mesmo nome para as rotas
      routes: {
        "/": (_) => const OnePage(),
        "/twoPage": (_) => const TwoPage(),
      }
    );
  }
}

