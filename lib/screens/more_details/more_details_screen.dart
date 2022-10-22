import 'package:echelon_talent_app/constants/colors.dart';
import 'package:echelon_talent_app/screens/about_you/about_you_screen.dart';
import 'package:echelon_talent_app/widgets/progress_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../widgets/custom_text_field.dart';

class MoreDetailsScreen extends StatefulWidget {
  const MoreDetailsScreen({Key? key}) : super(key: key);

  @override
  State<MoreDetailsScreen> createState() => _MoreDetailsScreenState();
}

class _MoreDetailsScreenState extends State<MoreDetailsScreen> {
  final _formKey = GlobalKey<FormState>();
  String? _currentSelectedCountry;
  var country = [
    "India",
    "Usa",
    "Canada",
  ];
  String? _currentSelectedState;
  var state = [
    "Alabama",
    "Alaska",
    "Arizona",
    "Arkansas",
    "California",
    "Colorado",
    "Connecticut",
    "Delaware",
    "Florida",
    "Gregoria",
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
        child: Stack(
          clipBehavior: Clip.none,
          alignment: Alignment.bottomCenter,
          children: [
            SizedBox(
              height: size.height,
              width: size.width,
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      Image.asset(
                        'assets/images/back.png',
                        height: 24,
                        width: 24,
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Text(
                        'We need a few more details',
                        style: GoogleFonts.poppins(
                          fontSize: 19,
                          color: textColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Form(
                        key: _formKey,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const CustomTextField(text: 'User ID',),
                            const SizedBox(
                              height: 8,
                            ),
                            Row(
                              children: const [
                                Expanded(
                                  child: CustomTextField(text: 'First Name',),
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Expanded(
                                  child: CustomTextField(text: 'Second Name',)
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            const CustomTextField(text: 'Referral'),
                            const SizedBox(
                              height: 8,
                            ),
                            const CustomTextField(text: 'Email'),
                            const SizedBox(
                              height: 8,
                            ),
                            const CustomTextField(text: 'Phone No.'),
                            const SizedBox(
                              height: 8,
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Country',
                                        style: GoogleFonts.poppins(
                                          fontSize: 12,
                                          color: textColor,
                                        ),
                                      ),
                                      DropdownButtonFormField(
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
                                        items: country.map((String value) {
                                          return DropdownMenuItem<String>(
                                            value: value,
                                            child: Text(value),
                                          );
                                        }).toList(),
                                        value: _currentSelectedCountry,
                                        onChanged: (newValue) {
                                          setState(() {
                                            _currentSelectedCountry =
                                                newValue;
                                          });
                                        },
                                        validator: (value) {
                                          if (value == null ||
                                              value.isEmpty) {
                                            return 'Please select your country';
                                          }
                                          return null;
                                        },
                                      )
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  width: 8,
                                ),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'State',
                                        style: GoogleFonts.poppins(
                                          fontSize: 12,
                                          color: textColor,
                                        ),
                                      ),
                                      DropdownButtonFormField(
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
                                        items: state.map((String value) {
                                          return DropdownMenuItem<String>(
                                            value: value,
                                            child: Text(value),
                                          );
                                        }).toList(),
                                        value: _currentSelectedState,
                                        onChanged: (newValue) {
                                          setState(() {
                                            _currentSelectedState = newValue;
                                          });
                                        },
                                        validator: (value) {
                                          if (value == null ||
                                              value.isEmpty) {
                                            return 'Please select your state';
                                          }
                                          return null;
                                        },
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 130,),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Column(
                  children: [
                    InkWell(
                      onTap: () {
                        if (_formKey.currentState!.validate()) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => const AboutYouScreen(),
                            ),
                          );
                        }
                      },
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            gradient: const LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: [
                                  grad1,
                                  grad2,
                                ])),
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const SizedBox(),
                            Text(
                              'Next: About You',
                              style: GoogleFonts.poppins(
                                fontSize: 12,
                                color: white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Image.asset(
                              'assets/images/forward.png',
                              height: 25,
                              width: 25,
                            )
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const ProgressBar(
                      percent: 20,
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
