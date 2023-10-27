import 'package:flutter/material.dart';
import 'package:untitled2/Constants.dart';

class BottomButton extends StatelessWidget {
  const BottomButton({
    super.key,
    required this.onTap,
    required this.buttonTitle,
  });
  final Function() onTap;
  final String buttonTitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(
            buttonTitle,
            style: klargeButtonTextStyle,
          ),
        ),
        color: kbottomcontainercolour,
        margin: EdgeInsets.only(top: 10.0),
        padding: EdgeInsets.only(bottom: .0),
        width: double.infinity,
        height: KbottomContainerheight,
      ),
    );
  }
}
