import 'package:echelon_talent_app/constants/colors.dart';
import 'package:echelon_talent_app/screens/culture/culture_screen.dart';
import 'package:echelon_talent_app/widgets/custom_text_field.dart';
import 'package:echelon_talent_app/widgets/progress_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AspirationsScreen extends StatefulWidget {
  const AspirationsScreen({Key? key}) : super(key: key);

  @override
  State<AspirationsScreen> createState() => _AspirationsScreenState();
}

class _AspirationsScreenState extends State<AspirationsScreen> {
  final _formKey = GlobalKey<FormState>();


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
                        'Aspirations',
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
                                  'Aspirations (what would success look like?) ',
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
                            const CustomTextField(text: 'What emerging trends/technology are you looking forward to learn? '),
                            const SizedBox(
                              height: 8,
                            ),
                            const CustomTextField(text: 'What business domains/industry knowledge are you looking to learn?'),
                            const SizedBox(
                              height: 8,
                            ),
                            const CustomTextField(text: 'Compensation expectations'),
                            const SizedBox(
                              height: 8,
                            ),
                            const CustomTextField(text: 'Your perfect job, environment and culture'),
                            const SizedBox(
                              height: 8,
                            ),
                            const CustomTextField(text: 'Why do you want to be part of this platform?'),
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
                              builder: (_) => const CultureScreen(),
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
                              'Next: Culture',
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
                      percent: 60,
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
