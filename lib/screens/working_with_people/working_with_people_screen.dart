import 'package:echelon_talent_app/constants/colors.dart';
import 'package:echelon_talent_app/widgets/custom_text_field.dart';
import 'package:echelon_talent_app/widgets/progress_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WorkingWithPeopleScreen extends StatefulWidget {
  const WorkingWithPeopleScreen({Key? key}) : super(key: key);

  @override
  State<WorkingWithPeopleScreen> createState() => _WorkingWithPeopleScreenState();
}

class _WorkingWithPeopleScreenState extends State<WorkingWithPeopleScreen> {
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
                        'Culture: Working with \npeople',
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
                            CustomTextField(text: 'Describe what you believe are the most effective roles that a good manager plays in his or her relationship with reporting staff members.'),
                            SizedBox(
                              height: 8,
                            ),
                            CustomTextField(text: 'What are the three to five expectations that you have of senior leaders in an organization where you will work successfully?'),
                            SizedBox(
                              height: 8,
                            ),
                            CustomTextField(text: 'When you work with a team, describe the role that you are most likely to play on the team.'),
                            SizedBox(
                              height: 8,
                            ),
                            CustomTextField(text: 'How would co-workers describe the role that you play on a team?'),
                            SizedBox(
                              height: 8,
                            ),
                            CustomTextField(text: 'When working with people, in general, describe your preferred relationship with them.'),
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
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Submit',
                              style: GoogleFonts.poppins(
                                fontSize: 12,
                                color: white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const ProgressBar(
                      percent: 100,
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
