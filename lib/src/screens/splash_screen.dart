import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:exercise/src/screens/login.dart';
import 'package:exercise/src/screens/signup.dart';
import 'package:exercise/src/models/primary_button.dart';
import 'package:exercise/src/models/outlined_primary_button.dart';
import 'package:exercise/src/utils/colors.dart';
import 'package:exercise/src/utils/font.dart';

class Splash_Screen extends StatelessWidget {
  const Splash_Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.primaryColorDark,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Lottie.asset(
                'assets/lottie/main.json', // Adjust path to your Lottie animation
                height: 150,
                width: 150,
                fit: BoxFit.contain, // Adjust fit as needed
              ),
              const SizedBox(height: 20),
              Text('FlexiFit', style: CustomTextStyles.largeTextStyle()),
              const SizedBox(height: 20),
              Text(
                "Fitness is not a destination, it's a journey.",
                style: CustomTextStyles.smallTextStyle(),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),
              PrimaryButton(
                text: 'Login',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginScreen()),
                  );
                },
              ),
              const SizedBox(height: 25),
              OutlinedPrimaryButton(
                text: 'Sign Up',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SignupScreen()),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
