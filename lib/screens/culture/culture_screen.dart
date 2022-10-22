import 'package:echelon_talent_app/constants/colors.dart';
import 'package:echelon_talent_app/screens/working_with_people/working_with_people_screen.dart';
import 'package:echelon_talent_app/widgets/custom_text_field.dart';
import 'package:echelon_talent_app/widgets/progress_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CultureScreen extends StatefulWidget {
  const CultureScreen({Key? key}) : super(key: key);

  @override
  State<CultureScreen> createState() => _CultureScreenState();
}

class _CultureScreenState extends State<CultureScreen> {
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
                        'Culture',
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
                          children: const [
                            CustomTextField(text: 'Describe the work environment or culture in which you are most productive and happy.'),
                            SizedBox(
                              height: 8,
                            ),
                            CustomTextField(text: 'What are you really good at professionally? Please provide examples.'),
                            SizedBox(
                              height: 8,
                            ),
                            CustomTextField(text: 'What are you not good at or not interested in doing professionally? Please provide examples.'),
                            SizedBox(
                              height: 8,
                            ),
                            CustomTextField(text: 'What are the characteristics exhibited by the best boss you have ever had—or wish that you have had?'),
                            SizedBox(
                              height: 8,
                            ),
                            CustomTextField(text: 'Describe the management style that will bring forth your best work and efforts.'),
                            SizedBox(
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
                              builder: (_) => const WorkingWithPeopleScreen(),
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
                              'Next: Working with people',
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
                      percent: 80,
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
