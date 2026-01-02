import 'package:flutter/material.dart';
import 'package:provider_statemanagement/Helper/Resources/ResponsiveUI.dart';
import 'package:provider_statemanagement/Helper/Resources/Styles.dart';

class CustomButton extends StatelessWidget {
  final Function onPressed;
  final String buttonText;
  final double width, height;

  const CustomButton({
    super.key,
    required this.onPressed,
    required this.buttonText,
    required this.width,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()=> onPressed(),
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          gradient: AppGradients.primaryButton,
          borderRadius: BorderRadius.circular(15.r),
        ),
        child: Center(child: Text(buttonText, style: Styles.customButtonText)),
      ),
    );
  }
}
