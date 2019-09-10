import 'package:flutter/material.dart';
class ReusableCard extends StatelessWidget {
  final Color color;
  final Widget cardChild;
  final Function onPress;
  ReusableCard({ this.onPress,@required this.color, this.cardChild});
  //ReusableCard({Color color}){
  //  this.color=color;
  //}

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        margin: EdgeInsets.all(15.0),
        child: cardChild,
        decoration: BoxDecoration(
            color: this.color, borderRadius: BorderRadius.circular(10.0)),
      ),
    );
  }
}