import 'package:echelon_talent_app/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProgressBar extends StatelessWidget {
  const ProgressBar({
    Key? key,
    required this.percent,
  }) : super(key: key);

  final int percent;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 11,
          width: size.width,
          decoration: BoxDecoration(
            color: darkGrey,
            borderRadius: BorderRadius.circular(25),
          ),
          child: Row(
            children: [
              Container(
                height: 11,
                width: size.width * (percent / 100) - 40,
                decoration: BoxDecoration(
                  color: primary,
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 5,),
        Text(
          '$percent% done',
          style: GoogleFonts.poppins(
            fontSize: 8,
            color: darkGrey,
          ),
        )
      ],
    );
  }
}
