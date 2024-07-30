import 'package:flutter/material.dart';
import 'package:flutter_application_2/inicial.dart';
import 'package:google_fonts/google_fonts.dart';

class  Resultado extends StatelessWidget {
  String _textoRecebido;

  Resultado(this._textoRecebido, {super.key});

  @override

  void _inicial() {
     runApp(
      const MaterialApp(
        home: Inicial(),
        debugShowCheckedModeBanner: false,
      )
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Resultado'),
      ),
      body: Center(
        child: Column(
          children: [
            newText(GoogleFonts.akshar()),
            newText(GoogleFonts.aguafinaScript()),
            newText(GoogleFonts.notoSansSogdian())
          ],
        ),
      ),
       floatingActionButton: FloatingActionButton(
        onPressed: ()=>{_inicial()},
        child: Image.asset('assets/imagens/pencil.png'),
      ),
    );
  }

  Text newText(TextStyle font) {
    return Text(
      _textoRecebido,
      style: font,
    );
  }
}
