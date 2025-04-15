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
      debugShowCheckedModeBanner: false,
      title: 'Card Widget Demo',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Card Widget'),
          backgroundColor: Colors.tealAccent,
        ),
        body: Center(
          child: Card(
            elevation: 4,
            margin: const EdgeInsets.all(16),
            child: ListTile(
              leading: const Icon(Icons.account_circle, size: 50),
              title: const Text('Kimi Maulana'),
              subtitle: const Text('Software Engineer'),
            ),
          ),
        ),
      ),
    );
  }
}
