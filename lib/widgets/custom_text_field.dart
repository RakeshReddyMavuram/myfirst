import 'package:echelon_talent_app/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextField extends StatelessWidget {
  final String text;

  const CustomTextField({
    required this.text,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text,
          style: GoogleFonts.poppins(
            fontSize: 12,
            color: textColor,
          ),
        ),
        TextFormField(
          cursorColor: primary,
          decoration: InputDecoration(
            filled: true,
            fillColor: lightGrey,
            contentPadding: const EdgeInsets.all(10),
            errorStyle: const TextStyle(height: 0),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(6),
                borderSide:
                    const BorderSide(width: 0, style: BorderStyle.none)),
          ),
          validator: (value) {
            if (value == null || value.isEmpty) {
              if (text == "User ID") {
                return 'Please enter User Id';
              } else if (text == "First Name") {
                return "Please enter First name";
              } else if (text == "Second Name") {
                return "Please enter Second name";
              } else if (text == "Referral") {
                return "Please enter Referral";
              } else if (text == "Email") {
                return "Please enter your email";
              } else if (text == "Phone No.") {
                return "Please enter your Phone number";
              }else if (text == "What technology stack/platform are you looking to work in?") {
                return "Please complete this field";
              }
            } else if (text == "Email" &&
                !RegExp(r"^([a-zA-Z0-9_\-.]+)@([a-zA-Z0-9_\-.]+)\.([a-zA-Z]{2,5})$")
                    .hasMatch(value)) {
              return 'Please enter a valid Email';
            } else if (text == "Phone No." &&
                !RegExp(r'^[+]?[(]?[0-9]{3}[)]?[-\s.]?[0-9]{3}[-\s.]?[0-9]{4,6}$')
                    .hasMatch(value)) {
              return 'Please enter a valid Phone number';
            }
            return null;
          },
        ),
      ],
    );
  }
}
