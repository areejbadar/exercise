import 'package:exercise/src/utils/font.dart';
import 'package:flutter/material.dart';
import 'package:exercise/src/models/custom_textfield.dart';
import 'package:exercise/src/models/outlined_primary_button.dart';
import 'package:exercise/src/models/primary_button.dart';
import 'package:exercise/src/screens/exercise_list.dart';
import 'package:exercise/src/utils/colors.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
                width: 180,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/login_screen.png'),
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              // MainText
              Text(
                'Welcome',
                style: CustomTextStyles.largeTextStyle(),
              ),
              Text(
                'Welcome to the world of Fitness.',
                style: CustomTextStyles.smallTextStyle(),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 40,
              ),
              CustomTextField(labelText: 'Name'),
              SizedBox(
                height: 20,
              ),

              CustomTextField(labelText: 'Password'),
              SizedBox(height: 20),
              Row(
                children: [
                  Checkbox(
                    value: isChecked,
                    onChanged: (value) {
                      setState(() {
                        isChecked = value!;
                      });
                    },
                    fillColor: MaterialStateColor.resolveWith(
                      (states) => Colors.white,
                    ),
                    checkColor: MaterialStateColor.resolveWith(
                      (states) => Colors.black,
                    ),
                  ),
                  Text(
                    'Remember me',
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(
                    width: 18.0,
                    height: 5.0,
                  ),
                  TextButton(
                      onPressed: () {
                        // Route of Forget Password
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (context) => ForgetPassword()));
                      },
                      child: Text(
                        'Forget Password',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ))
                ],
              ),
              const SizedBox(height: 20),
              PrimaryButton(
                  text: 'Login',
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ExerciseListScreen()));
                  }),
              SizedBox(
                height: 20,
              ),
              Row(
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
            ],
          ),
        ),
      ),
    );
  }
}
