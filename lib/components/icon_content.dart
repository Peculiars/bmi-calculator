import 'package:flutter/material.dart';
import 'constants.dart';



class IconComponent extends StatelessWidget {
  const IconComponent(this.icon, this.label, {super.key});

  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80.0,
        ),
        const SizedBox(height: 15.0,),
        Text(
          label,
          style: klabelTextStyle, 
          ),
      ],
    );
  }
}