import 'package:flutter/material.dart';
import 'package:flutter_alubank/components/box_card.dart';
import 'package:flutter_alubank/components/color_dot.dart';
import 'package:flutter_alubank/components/content_division.dart';
import 'package:flutter_alubank/themes/theme_colors.dart';

class AccoutPoints extends StatelessWidget {
  const AccoutPoints({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 16.0),
            child: Text(
              'Pontos da conta',
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
          BoxCard(
            boxContent: const _AccoutPointsContent(),
          )
        ],
      ),
    );
  }
}

class _AccoutPointsContent extends StatelessWidget {
  const _AccoutPointsContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: Text('Pontos totais:'),
        ),
        Text(
          '3000',
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
          child: ContentDivision(),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Text(
            'Objetivos:',
            style: Theme.of(context).textTheme.titleMedium,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 4.0),
                child: ColorDot(color: ThemeColors.accountPoints['delivery']),
              ),
              Text('Entrega grátis: 15000pts'),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 4.0),
                child: ColorDot(color: ThemeColors.accountPoints['streaming']),
              ),
              Text('1 mês de streaming: 30000pts'),
            ],
          ),
        ),
      ],
    );
  }
}
