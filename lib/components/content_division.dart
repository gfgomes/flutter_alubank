import 'package:flutter/material.dart';
import 'package:flutter_alubank/themes/theme_colors.dart';

class ContentDivision extends StatelessWidget {
   ContentDivision({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1,
      decoration: BoxDecoration(
        border: Border.all(color: ThemeColors.division),
      ),
    );
  }
}
