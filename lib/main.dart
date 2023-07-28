import 'package:criadouro/novoFilhote.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

const white = Colors.white;

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Criadouro Bozzi',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: white),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Criadouro Bozzi'),
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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.surface,
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.only(bottom: 240),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: 80),
                child: ClipOval(
                  child: Image(
                    image: AssetImage('images/trinca.jpg'),
                    width: 240,
                    // Defina o tamanho da imagem aqui
                    height: 240,
                    // Defina o tamanho da imagem aqui
                    fit: BoxFit
                        .cover, // Define como a imagem será ajustada dentro do círculo
                  ),
                ),
              ),
              Wrap(
                alignment: WrapAlignment.center,
                spacing: 16.0,
                runSpacing: 16.0,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => novoFilhote(),
                        ),
                      );
                    },
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.add_circle_rounded),
                        SizedBox(width: 8),
                        Text(
                          'Filhote',
                          style: TextStyle(fontSize: 22),
                        ),
                      ],
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => novoFilhote(),
                        ),
                      );
                    },
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.add_circle_rounded),
                        SizedBox(width: 8),
                        Text(
                          'Filhote',
                          style: TextStyle(fontSize: 22),
                        ),
                      ],
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => novoFilhote(),
                        ),
                      );
                    },
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.add_circle_rounded),
                        SizedBox(width: 8),
                        Text(
                          'Filhote',
                          style: TextStyle(fontSize: 22),
                        ),
                      ],
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => novoFilhote(),
                        ),
                      );
                    },
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.add_circle_rounded),
                        SizedBox(width: 8),
                        Text(
                          'Filhote',
                          style: TextStyle(fontSize: 22),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
