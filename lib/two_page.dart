import 'package:flutter/material.dart';

class TwoPage extends StatelessWidget {

  const TwoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //o args recebeu com formato de string
    var args = ModalRoute.of(context)!.settings.arguments as String;
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: Colors.blueAccent.shade200,
      body: Center(
        child: ElevatedButton(
          onPressed: (){
            //canPop verifica se é possivel fazer o pop (retornar a pagina anterior)
            if(Navigator.of(context).canPop()){
              Navigator.of(context).pop("Retornar");
            }
          },

          child: Text("Voltar para page anterior $args"),
        ),
      ),
    );
  }
}
