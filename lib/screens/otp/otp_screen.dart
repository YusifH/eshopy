import 'package:flutter/material.dart';

class OtpScreen extends StatelessWidget {
  OtpScreen({Key? key}) : super(key: key);
  final TextEditingController _fieldOne = TextEditingController();
  final TextEditingController _fieldTwo = TextEditingController();
  final TextEditingController _fieldThree = TextEditingController();
  final TextEditingController _fieldFour = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.asset(
                'assets/images/splash_3.png',
                width: 150,
                height: 250,
                alignment: Alignment.center,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Enter OTP',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'A 4 digit code has been sent to',
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(
              height: 5,
            ),
            const Text(
              '+994508852500',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Colors.black38),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 75,
                    width: 75,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.grey.shade200
                    ),
                    child: TextField(
                      cursorColor: Theme.of(context).primaryColor,

                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}

// class OtpInput extends StatelessWidget {
//   final TextEditingController controller;
//   final bool autoFocus;
//
//   const OtpInput(this.controller, this.autoFocus, {Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(15),
//         color: Colors.grey.shade200
//       ),
//       height: 75,
//       width: 75,
//       child: TextField(
//         autofocus: autoFocus,
//         textAlign: TextAlign.center,
//         keyboardType: TextInputType.number,
//         controller: controller,
//         maxLength: 1,
//         cursorColor: Theme.of(context).primaryColor,
//         decoration: const InputDecoration(
//             border: OutlineInputBorder(
//               borderRadius: BorderRadius.all(Radius.circular(15))
//             ),
//             counterText: '',
//             hintStyle: TextStyle(color: Colors.black, fontSize: 20.0, fontWeight: FontWeight.bold)),
//         onChanged: (value) {
//           if (value.length == 1) {
//             FocusScope.of(context).nextFocus();
//           }
//         },
//       ),
//     );
//   }
// }
