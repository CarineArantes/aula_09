import 'package:flutter/material.dart';
import 'package:flutter_application_2/resultado.dart';

class Inicial extends StatefulWidget {
  const Inicial({super.key});

  @override
  State<Inicial> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Inicial> {
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  void _resultado() {
     runApp(
      MaterialApp(
        home: Resultado(_controller.text),
        debugShowCheckedModeBanner: false,
      )
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Inicio !')),
      body: Center(
        child: Column(
          children: [
            TextField(
             controller: _controller,
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _resultado,
        child: Image.asset('assets/imagens/pencil.png'),
      ),
      drawer: const Text('Settings icon by Ravindra Kalkani ([https://iconscout.com/contributors/ravindra-kalkani])'),
    );
  }
}
