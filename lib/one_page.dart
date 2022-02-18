import 'package:flutter/material.dart';
import 'package:navegation/two_page.dart';

class OnePage extends StatelessWidget {
  const OnePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: (){
            //o pushNamed só colocar o nome da rota
            Navigator.of(context).pushNamed("/twoPage", arguments: "teste").then(
                    (value) => print (value),
            );
          },
          child: Text("Ir para Segunda Page"),
        ),
      ),
    );
  }
}
