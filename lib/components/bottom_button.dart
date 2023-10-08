import 'package:flutter/material.dart';
import 'constants.dart';
class BottomButton extends StatelessWidget {
  const BottomButton(this.onTap, this.buttonTitle, {super.key});
  final VoidCallback onTap;
  final String buttonTitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: kBottomContainerHeight,
        color:  kBottomContainerColor,
        child:  Center(
          child: Text(buttonTitle,
          style: kCalculateButtonTextStyle),
        ),
      ),
    );
  }
}
