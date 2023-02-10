import 'package:eshopy/constants/colors.dart';
import 'package:eshopy/screens/otp/otp_screen.dart';
import 'package:eshopy/screens/register/widget/textfield.dart';
import 'package:flutter/material.dart';

import '../../widgets/custom_button.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Center(
                    child: Image.asset(
                  'assets/images/splash_1.png',
                  width: 150,
                  height: 250,
                )),
              ),
              // const Spacer(),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Sign Up',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 15,
              ),
              const CustomTexField(
                  icon: Icons.email, hintText: 'Enter Your Email'),
              const CustomTexField(icon: Icons.person, hintText: 'Full Name'),
              const CustomTexField(icon: Icons.phone, hintText: 'Phone Number'),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: const [
                  Text('By signing up you agree to our'),
                  Text('Terms'),
                  Text('and'),
                  Text('Condition'),
                  Text('and'),
                  Text(''),
                ],
              ),
              const SizedBox(height: 15),
              Container(
                padding: const EdgeInsets.only(top: 15, bottom: 15),
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: (context) => OtpScreen()),
                          (Route<dynamic> route) => false,
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: kPrimaryColor
                  ),
                  child: const Text('Sign Up'),
                ),
              )

              // const Spacer(flex: 3,),
            ],
          ),
        ),
      ),
    );
  }
}
