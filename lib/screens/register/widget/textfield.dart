
import 'package:flutter/material.dart';

class CustomTexField extends StatelessWidget {
  const CustomTexField({
    super.key, required this.icon, required this.hintText,
  });
  final IconData icon;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          color: Colors.grey,
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(left: 10, bottom: 10, top: 8),
            child: TextField(
              decoration: InputDecoration(
                  hintText: hintText,

              ),
            ),
          ),
        ),
      ],
    );
  }
}