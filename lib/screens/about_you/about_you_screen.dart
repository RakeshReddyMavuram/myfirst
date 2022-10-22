import 'package:echelon_talent_app/constants/colors.dart';
import 'package:echelon_talent_app/screens/aspirations/aspirations_screen.dart';
import 'package:echelon_talent_app/widgets/custom_text_field.dart';
import 'package:echelon_talent_app/widgets/progress_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutYouScreen extends StatefulWidget {
  const AboutYouScreen({Key? key}) : super(key: key);

  @override
  State<AboutYouScreen> createState() => _AboutYouScreenState();
}

enum YesOrNoCharacter { yes, no }

class _AboutYouScreenState extends State<AboutYouScreen> {
  final _formKey = GlobalKey<FormState>();
  String? _currentSelectedIndustryExp;
  var industryExp = [
    "<1 year",
    "1-3 years",
    "3-5 years",
    "5-10 years",
    ">10 years",
  ];
  String? _currentSelectedDomainExp;
  var domainExp = [
    "<1 year",
    "1-3 years",
    "3-5 years",
    "5-10 years",
    ">10 years",
  ];

  YesOrNoCharacter? radio_button = YesOrNoCharacter.yes;

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
                      InkWell(
                        onTap: (){
                          Navigator.pop(context);
                        },
                        child: Image.asset(
                          'assets/images/back.png',
                          height: 24,
                          width: 24,
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Text(
                        'About you',
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
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Bio',
                                  style: GoogleFonts.poppins(
                                    fontSize: 12,
                                    color: textColor,
                                  ),
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      child: TextFormField(
                                        cursorColor: primary,
                                        decoration: InputDecoration(
                                          filled: true,
                                          fillColor: lightGrey,
                                          contentPadding:
                                              const EdgeInsets.all(10),
                                          errorStyle:
                                              const TextStyle(height: 0),
                                          border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(6),
                                              borderSide: const BorderSide(
                                                  width: 0,
                                                  style: BorderStyle.none)),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    Center(
                                      child: Text(
                                        'or',
                                        style: GoogleFonts.poppins(
                                          fontSize: 9,
                                          color: textColor,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Container(
                                          height: 50,
                                          width: 50,
                                          padding: const EdgeInsets.all(15),
                                          decoration: BoxDecoration(
                                              color: lightGrey,
                                              borderRadius:
                                                  BorderRadius.circular(6)),
                                          child: Image.asset(
                                            'assets/images/upload.png',
                                            width: 15,
                                            height: 15,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Text(
                              'Upload Resume',
                              style: GoogleFonts.poppins(
                                fontSize: 12,
                                color: textColor,
                              ),
                            ),
                            Container(
                              height: 50,
                              width: double.infinity,
                              padding: const EdgeInsets.all(15),
                              decoration: BoxDecoration(
                                  color: lightGrey,
                                  borderRadius: BorderRadius.circular(6)),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Image.asset(
                                    'assets/images/upload.png',
                                    width: 15,
                                    height: 15,
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Text(
                              'Have you worked with any of the community members?',
                              style: GoogleFonts.poppins(
                                fontSize: 12,
                                color: textColor,
                              ),
                            ),
                            Row(
                              children: <Widget>[
                                Radio(
                                  value: YesOrNoCharacter.yes,
                                  groupValue: radio_button,
                                  activeColor: primary,
                                  onChanged: (value) {
                                    setState(() {
                                      radio_button = value;
                                    });
                                  },
                                ),
                                const SizedBox(
                                  width: 3,
                                ),
                                Text(
                                  'Yes',
                                  style: GoogleFonts.poppins(
                                    fontSize: 14,
                                    color: black,
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Radio(
                                  value: YesOrNoCharacter.no,
                                  groupValue: radio_button,
                                  activeColor: primary,
                                  onChanged: (value) {
                                    setState(() {
                                      radio_button = value;
                                    });
                                  },

                                ),
                                const SizedBox(
                                  width: 3,
                                ),
                                Text(
                                  'No',
                                  style: GoogleFonts.poppins(
                                    fontSize: 14,
                                    color: black,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            const CustomTextField(text: 'If yes, please provide the name'),
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
                                        'Industry Exp.',
                                        style: GoogleFonts.poppins(
                                          fontSize: 12,
                                          color: textColor,
                                        ),
                                      ),
                                      DropdownButtonFormField(
                                        decoration: InputDecoration(
                                          filled: true,
                                          fillColor: lightGrey,
                                          contentPadding:
                                              const EdgeInsets.all(10),
                                          errorStyle:
                                              const TextStyle(height: 0),
                                          border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(6),
                                              borderSide: const BorderSide(
                                                  width: 0,
                                                  style: BorderStyle.none)),
                                        ),
                                        items: industryExp.map((String value) {
                                          return DropdownMenuItem<String>(
                                            value: value,
                                            child: Text(value),
                                          );
                                        }).toList(),
                                        value: _currentSelectedIndustryExp,
                                        onChanged: (newValue) {
                                          setState(() {
                                            _currentSelectedIndustryExp = newValue;
                                          });
                                        },
                                        validator: (value) {
                                          if (value == null || value.isEmpty) {
                                            return 'Please select your Industry Exp.';
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
                                        'Domain Exp.',
                                        style: GoogleFonts.poppins(
                                          fontSize: 12,
                                          color: textColor,
                                        ),
                                      ),
                                      DropdownButtonFormField(
                                        decoration: InputDecoration(
                                          filled: true,
                                          fillColor: lightGrey,
                                          contentPadding:
                                              const EdgeInsets.all(10),
                                          errorStyle:
                                              const TextStyle(height: 0),
                                          border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(6),
                                              borderSide: const BorderSide(
                                                  width: 0,
                                                  style: BorderStyle.none)),
                                        ),
                                        items: domainExp.map((String value) {
                                          return DropdownMenuItem<String>(
                                            value: value,
                                            child: Text(value),
                                          );
                                        }).toList(),
                                        value: _currentSelectedDomainExp,
                                        onChanged: (newValue) {
                                          setState(() {
                                            _currentSelectedDomainExp = newValue;
                                          });
                                        },
                                        validator: (value) {
                                          if (value == null || value.isEmpty) {
                                            return 'Please select your Domain Exp.';
                                          }
                                          return null;
                                        },
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            const CustomTextField(text: 'What technology stack/platform are you looking to work in?'),
                            const SizedBox(
                              height: 8,
                            ),
                            const CustomTextField(text: 'Give an example of research/pilot project you have done?'),
                            const SizedBox(
                              height: 130,
                            ),
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
                              builder: (_) => const AspirationsScreen(),
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
                              'Next: Aspirations',
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
                      percent: 40,
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
