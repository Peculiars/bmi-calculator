import 'package:flutter/material.dart';

class ReUseCard extends StatelessWidget {

  const ReUseCard (this.colour, this.cardChild, {super.key});

  final Color colour;
  final Widget cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15.0),
      height: 200.0,
      width:double.infinity,
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: cardChild,
    );
  }
}