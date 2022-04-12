import 'dart:ui';

import 'package:flutter/material.dart';

class CardTable extends StatelessWidget {
  const CardTable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Table(
      children: const [
        TableRow(
          children: [
            _SingleCard(icon: Icons.square, color: Colors.blue, text: 'General'),
            _SingleCard(icon: Icons.emoji_transportation_outlined, color: Colors.pink, text: 'Transport'),
          ],
        ),
        TableRow(
          children: [
            _SingleCard(icon: Icons.store, color: Colors.purpleAccent, text: 'Market'),
            _SingleCard(icon: Icons.newspaper_outlined, color: Colors.green, text: 'News'),
          ],
        ),
        TableRow(
          children: [
            _SingleCard(icon: Icons.tablet_mac_rounded, color: Colors.orange, text: 'Device'),
            _SingleCard(icon: Icons.attach_money_outlined, color: Colors.cyan, text: 'Crypto'),
          ],
        ),
        TableRow(
          children: [
            _SingleCard(icon: Icons.battery_charging_full_sharp, color: Colors.indigoAccent, text: 'Battery'),
            _SingleCard(icon: Icons.favorite, color: Colors.teal, text: 'Favorite'),
          ],
        ),
      ],
    );
  }
}

class _SingleCard extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String text;

  const _SingleCard({
    Key? key,
    required this.icon,
    required this.color,
    required this.text,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return _CardBackground(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundColor: color,
            child: Icon(
              icon,
              size: 35,
              color: Colors.white,
            ),
            radius: 30,
          ),
          const SizedBox(height: 10),
          Text(
            text,
            style: TextStyle(color: color, fontSize: 18),
          )
        ],
      ),
    );
  }
}

class _CardBackground extends StatelessWidget {
  final Widget child;

  const _CardBackground({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: Container(
            height: 180,
            decoration: BoxDecoration(
              color: const Color.fromRGBO(62, 66, 67, 0.7),
              borderRadius: BorderRadius.circular(20),
            ),
            child: child,
          ),
        ),
      ),
    );
  }
}
