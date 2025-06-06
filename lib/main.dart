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
      title: '3.4. Utilización de widgets',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 92, 17, 11),
        ),
      ),
      home: const MyHomePage(title: '3.4. Utilización de widgets'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // Aqui meteremos los widgets a usar
  @override
  Widget build(BuildContext context) {
    // Vamos a dejar un scaffold para poder agregar despues elementos
    // como AppBar, Body, Bottom Navigation, Footers etc.
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      // Vamos a centrar el body
      body: Center(
        // Meter todo en un container
        child: Container(
          alignment: Alignment.center,
          width: 300,
          height: 200,
          // Y vamos a crear una tabla usando widgets
          child: Column(
            children: [
              Row(
                // Alinearlo al centro
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Tabla de widgets', style: TextStyle(fontSize: 24)),
                ],
              ),
              Stack(
                children: [
                  Container(width: 400, height: 100, color: Colors.red),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text('Columna 1 - Item 1'),
                          Text('Columna 1 - Item 2'),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Columna 2 - Item 1'),
                          Text('Columna 2 - Item 2'),
                        ],
                      ),
                    ],
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
