import 'package:flutter/material.dart';
import 'package:sabak06/constants/app_colors.dart';
import 'package:sabak06/constants/app_text_styles.dart';

class ButtonContent extends StatelessWidget {
  final String iconText;
  final String buttonText;
  const ButtonContent({
    Key key,
    this.iconText,
    this.buttonText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(width: 14.0),
        CircleAvatar(
          radius: 18,
          backgroundColor: AppColors.white.withOpacity(0.2),
          child: Text(
            iconText,
            style: AppTextStyles.whiteButtonBold24,
          ),
        ),
        const SizedBox(width: 16.0),
        Text(
          buttonText.toUpperCase(),
          style: AppTextStyles.whiteButtonBold24,
        ),
      ],
    );
  }
}
