import 'package:flutter/material.dart';
import 'package:flutter_alubank/components/box_card.dart';
import 'package:flutter_alubank/components/color_dot.dart';
import 'package:flutter_alubank/components/content_division.dart';
import 'package:flutter_alubank/components/sections/header.dart';
import 'package:flutter_alubank/themes/theme_colors.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Header(),
          BoxCard(boxContent: ContentDivision()),
        ],
      ),
    );
  }
}
