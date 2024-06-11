import 'package:flutter/material.dart';
import 'package:flutter_alubank/screens/home.dart';
import 'package:flutter_alubank/themes/my_theme.dart';

void main() {
  runApp(const Alubank());
}

class Alubank extends StatelessWidget {
  const Alubank({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Alubank',
      theme: MyTheme,
      home: Home(),
    );
  }
}
