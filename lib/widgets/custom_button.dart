import 'package:flutter/material.dart';
import '../constants/colors.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required PageController pageController, required this.title, required this.icon,
  }) : _pageController = pageController;

  final PageController _pageController;
  final String title;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        _pageController.nextPage(
            duration: const Duration(microseconds: 250),
            curve: Curves.easeIn);
      },
      style: ElevatedButton.styleFrom(
        shadowColor: kPrimaryColor,
        elevation: 5,
        backgroundColor: kWhiteColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
            vertical: 10, horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: const TextStyle(color: kPrimaryColor),
            ),
            Icon(
              icon,
              color: kPrimaryColor,
              size: 16,
            )
          ],
        ),
      ),
    );
  }
}