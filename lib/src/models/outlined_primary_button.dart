import 'package:flutter/material.dart';
import 'package:exercise/src/utils/colors.dart';

class OutlinedPrimaryButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const OutlinedPrimaryButton({
    Key? key,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPressed,
      child: Text(text),
      style: OutlinedButton.styleFrom(
        foregroundColor: CustomColors.primaryColorLight,
        backgroundColor: CustomColors.primaryColorDark,
        padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 110),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
          side: BorderSide(
            color: CustomColors.primaryColor,
            width: 1,
          ),
        ),
      ),
    );
  }
}
