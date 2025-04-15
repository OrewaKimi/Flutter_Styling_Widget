import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Theme Demo',
      theme: ThemeData(
        brightness: Brightness.dark, // change color become dark mode
        primarySwatch: Colors.deepPurple,
        appBarTheme: AppBarTheme( 
          backgroundColor: Colors.deepPurpleAccent,
          titleTextStyle: TextStyle(color: Colors.white),
        ),
        textTheme: const TextTheme(
          bodyLarge: TextStyle(
            fontSize: 20,
            color: Colors.white, 
          ),
        ),
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home With Theme')),
      body: Center(
        child: Text(
          'Ini teks dengan tema!',
          style: Theme.of(context).textTheme.bodyLarge,
        ),
      ),
    );
  }
}