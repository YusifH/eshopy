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
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                    child: Image.asset(
                  'assets/images/splash_1.png',
                  width: 150,
                  height: 250,
                )),
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
                    icon: Icons.email, hintText: 'Enter Your Email', keyboardType: TextInputType.emailAddress,),
                const CustomTexField(icon: Icons.person, hintText: 'Full Name'),
                const CustomTexField(icon: Icons.phone, hintText: 'Phone Number', keyboardType: TextInputType.phone,),
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
                  padding: const EdgeInsets.only(top: 15, bottom: 5),
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(builder: (context) => OtpScreen()),
                        (Route<dynamic> route) => false,
                      );
                    },
                    style: ButtonStyle(
                        elevation: MaterialStateProperty.all(2),
                        foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                        backgroundColor: MaterialStateProperty.all<Color>(kPrimaryColor),
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                                side: const BorderSide(color: kPrimaryColor)
                            )
                        )
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Text('Continue'),
                    ),
                  ),
                ),
                const Divider(
                  thickness: 1.5,
                ),
                Container(
                  padding: const EdgeInsets.only(bottom: 15),
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      // Navigator.pushAndRemoveUntil(
                      //   context,
                      //   MaterialPageRoute(builder: (context) => OtpScreen()),
                      //   (Route<dynamic> route) => false,
                      // );
                    },
                    style: ButtonStyle(
                      elevation: MaterialStateProperty.all(5),
                        foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                        backgroundColor: MaterialStateProperty.all<Color>(Colors.grey.shade200),
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                            )
                        )
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: const [
                          Icon(
                            Icons.ac_unit_rounded,
                            size: 24,
                          ),
                          Text(
                            'Signup with Google',
                            style: TextStyle(color: Colors.black, fontSize: 18),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Row(
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Joined us before?'),
                    const SizedBox(width: 5),
                    InkWell(
                      onTap: (){
                        // debugPrint('sdsd');
                      },
                      child: const Text(
                        'Login',
                        style: TextStyle(color: Colors.blue),
                      ),
                    ),
                  ],
                )
                // const Spacer(flex: 3,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
