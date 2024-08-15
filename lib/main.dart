import 'package:flutter/material.dart';
import 'package:flutter_aula2/com_estado.dart';

void main() {
  // início de Dart
  //Widget app = const MinhaApp();
  // início do Flutter:
  runApp(const ComEstado());
}

class MinhaApp extends StatelessWidget {
  const MinhaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Text(
	'Hello World!',
	textDirection: TextDirection.ltr,
      ),
    );
  }
}