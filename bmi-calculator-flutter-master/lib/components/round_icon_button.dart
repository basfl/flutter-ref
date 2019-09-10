import 'package:flutter/material.dart';
class RoundIconButton extends StatelessWidget {
  final IconData icon;
  final Function onPress;
  RoundIconButton({this.icon, this.onPress});
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(this.icon),
      onPressed: this.onPress,
      elevation: 0,
      constraints: BoxConstraints.tightFor(height: 40, width: 40),
      shape: CircleBorder(),
      fillColor: Color(0xff4c4f5e),
    );
  }
}
