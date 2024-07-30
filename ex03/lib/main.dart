import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
        ),
        body: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            if (constraints.maxWidth > 800) {
              return tresCaixas();
            } else if (constraints.maxWidth > 400) {
              return duasCaixas();
            } else {
              return umaCaixa();
            }
          },
        ));
  }

  Center umaCaixa() {
    return Center(
      child: Container(
        height: 100.0,
        width: 100.0,
        color: Color.fromARGB(255, 44, 160, 238),
      ),
    );
  }

  Center duasCaixas() {
    return Center(
      child: Row(
        children: [
          Container(
            height: 100.0,
            width: 100.0,
            color: Color.fromARGB(255, 44, 160, 238),
          ),
          Container(
            height: 100.0,
            width: 100.0,
            color: Color.fromARGB(255, 19, 197, 28),
          )
        ],
      ),
    );
  }

  Center tresCaixas() {
    return Center(
      child: Row(
        children: [
          Container(
            height: 100.0,
            width: 100.0,
            color: Color.fromARGB(255, 44, 160, 238),
          ),
          Container(
            height: 100.0,
            width: 100.0,
            color: Color.fromARGB(255, 19, 197, 28),
          ),
          Container(
            height: 100.0,
            width: 100.0,
            color: Color.fromARGB(255, 177, 132, 9),
          )
        ],
      ),
    );
  }
}
