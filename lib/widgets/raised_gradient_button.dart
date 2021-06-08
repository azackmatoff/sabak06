import 'package:flutter/material.dart';

class RaisedGradientButton extends StatelessWidget {
  final Widget child;
  final Function onPressed;
  final Gradient gradient;
  final double width;
  final double height;
  final double topMargin;

  const RaisedGradientButton({
    Key key,
    @required this.child,
    @required this.onPressed,
    @required this.gradient,
    this.width = double.infinity,
    this.height = 50.0,
    this.topMargin = 0.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: topMargin),
      width: width,
      height: height,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/button-bg-image.png"),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(8.0),
        gradient: gradient,
        boxShadow: [
          BoxShadow(
            color: Colors.grey[500],
            offset: Offset(0.0, 1.5),
            blurRadius: 1.5,
          ),
        ],
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onPressed,
          child: Center(
            child: child,
          ),
        ),
      ),
    );
  }
}
