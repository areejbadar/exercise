import 'package:flutter/material.dart';
import 'package:exercise/src/models/custom_textfield.dart';
import 'package:exercise/src/models/primary_button.dart';
import 'package:exercise/src/models/outlined_primary_button.dart';
import 'package:exercise/src/utils/colors.dart';
import 'package:exercise/src/utils/font.dart';
import 'package:exercise/src/screens/login.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.primaryColorDark,
      appBar: AppBar(
        title: Text(
          'Exercise App',
          style: CustomTextStyles.smallTextStyle(
              color: CustomColors.primaryColorLight),
        ),
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: CustomColors.primaryColor),
          onPressed: () {
            Navigator.pop(context); // Navigate back to the previous screen
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/lottie/main.json'),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Sign Up',
                style: TextStyle(
                  fontFamily: 'Itim',
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 6.0,
                  color: Colors.white,
                ),
              ),
              Text(
                'Welcome to the world of blockchain technology',
                style: TextStyle(color: Colors.white),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 40,
              ),

              CustomTextField(labelText: 'Full Name'),
              CustomTextField(labelText: 'Age'),
              CustomTextField(labelText: 'Sex'),
              CustomTextField(
                labelText: 'Password',
                obscureText: true,
              ),

              //  Text
              Text(
                'Welcome to the world of Fitness.',
                style: TextStyle(color: Colors.white),
                textAlign: TextAlign.center,
              ),
              //  Button
              const SizedBox(height: 20),
              PrimaryButton(
                  text: 'Sign Up',
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LoginScreen()));
                  }),
              SizedBox(
                height: 20,
              ),
              Center(
                child: Row(
                  children: [
                    Text(
                      'Already have an account?',
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(
                      width: 5.0,
                    ),
                    Text(
                      'Log In',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
