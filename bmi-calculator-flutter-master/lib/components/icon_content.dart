import 'package:flutter/material.dart';
import '../constants.dart';
class IconContent extends StatelessWidget {
  final String label;
  final IconData icon;
  IconContent({@required this.icon, @required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          this.icon,
          size: 60,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          this.label,
          style: kLabelTextStyle,
        ),
      ],
    );
  }
}