import 'package:flutter/material.dart';
import 'package:exercise/src/utils/colors.dart';

class PrimaryButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const PrimaryButton({
    Key? key,
    required this.text,
    required this.onPressed,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          backgroundColor: const Color.fromARGB(255, 13, 47, 38),
          foregroundColor: CustomColors.primaryColorLight,
          padding:
              const EdgeInsets.symmetric(vertical: 15.0, horizontal: 120.0),
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          )),
      onPressed: onPressed,
      child: Text(text),
    );
  }
}
