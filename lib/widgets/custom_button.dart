import 'package:flutter/material.dart';
import 'package:sabak06/constants/app_colors.dart';

class CustomButton extends StatelessWidget {
  final String buttonText;
  final VoidCallback onPressed;

  const CustomButton({
    Key key,
    this.buttonText,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(15.0),
      child: FlatButton(
        textColor: AppColors.white,
        color: AppColors.mainColor,
        child: Text(
          buttonText,
          style: TextStyle(
            color: Colors.white,
            fontSize: 20.0,
          ),
        ),
        onPressed: onPressed,
      ),
    );
  }
}
