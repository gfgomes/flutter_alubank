import 'package:flutter/material.dart';
import 'package:flutter_alubank/components/box_card.dart';

class AccoutActions extends StatelessWidget {
  const AccoutActions({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 12.0),
            child: Text(
              'Ações da conta',
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            InkWell(
              onTap: () {},
              child: const BoxCard(
                boxContent: _AccountActionsContent(
                  icon: Icon(Icons.account_balance_wallet),
                  text: 'Depositar',
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: const BoxCard(
                boxContent: _AccountActionsContent(
                  icon: Icon(Icons.cached),
                  text: 'Transferir',
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: const BoxCard(
                boxContent: _AccountActionsContent(
                  icon: Icon(Icons.center_focus_strong),
                  text: 'Ler',
                ),
              ),
            ),
          ])
        ],
      ),
    );
  }
}

class _AccountActionsContent extends StatelessWidget {
  final Icon icon;
  final String text;
  const _AccountActionsContent(
      {super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 75,
      child: Column(children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: icon,
        ),
        Text(text),
      ]),
    );
  }
}
