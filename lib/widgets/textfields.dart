import 'package:flutter/material.dart';

import '../theme/theme.dart';


class CustomTextField extends StatelessWidget {
  final String title;
  final String hint;
  const CustomTextField({super.key, required this.title, this.hint = ''});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Text(title, style: textFieldTitleTextStyle),
        ),
        const SizedBox(
          height: 2,
        ),
        TextField(
          decoration: InputDecoration(
            hintText: hint,
            hintStyle: textFieldHintTextStyle,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(
                  color: Colors.blue), // Warna biru ketika tidak fokus
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(
                  color: Colors.blue), // Warna biru ketika fokus
            ),
          ),
        ),
      ],
    );
  }
}
