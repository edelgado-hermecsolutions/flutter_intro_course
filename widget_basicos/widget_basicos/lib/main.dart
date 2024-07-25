import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const String appTitle = 'Widgets Basicos Flutter';
    return MaterialApp(
      title: appTitle,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(title: const Text(appTitle), actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.add_alert),
              tooltip: 'Ver snackbar',
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Esto es un snackbar')));
              },
            )
          ]),
          body: const Padding(
              padding: EdgeInsets.all(10.0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image(
                        image: NetworkImage(
                            'https://ichef.bbci.co.uk/ace/ws/640/cpsprodpb/6B34/production/_94244472_9.jpg.webp')),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text('Texto 1'),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 8.0),
                          child: Text('Texto 2 con padding vertical'),
                        ),
                        Text('Texto 3'),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.red,
                        ),
                        Icon(
                          Icons.star,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.green,
                        ),
                      ],
                    ),
                  ]))),
    );
  }
}
