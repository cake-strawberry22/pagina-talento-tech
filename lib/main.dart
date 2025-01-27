import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Layout',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 149, 125, 173),
        ),
        useMaterial3: true,
      ),
      home: const HomePage(title: 'Programa Layout'),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});
  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primaryContainer,
        title: Text(
          widget.title,
          style: const TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          
          Container(
            alignment: Alignment.center,
            height: 50,
            color: Colors.transparent,
            child: const Text(
              'Layout Superior',
              style: TextStyle(fontSize: 18),
            ),
          ),

          
          Container(
            width: 200,
            height: 300,
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                colors: [
                  Color(0xFFADD8E6), 
                  Color(0xFF9370DB), 
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.4), 
                  offset: const Offset(0, 6),
                  blurRadius: 8,
                ),
              ],
            ),
            alignment: Alignment.center,
            child: const Text(
              'Meu Aplicativo',
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
          ),

          
          Container(
            alignment: Alignment.center,
            height: 50,
            color: Colors.transparent,
            child: const Text(
              'Layout Inferior',
              style: TextStyle(fontSize: 18),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
