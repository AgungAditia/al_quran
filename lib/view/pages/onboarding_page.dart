import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            SvgPicture.asset('assets/images/component1.svg'),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Container(
                      width: 341,
                      height: 418,
                      decoration: BoxDecoration(
                        color: const Color(0XFF186351),
                        borderRadius: BorderRadius.circular(18),
                      ),
                      child: SvgPicture.asset('assets/images/alquran.svg'),
                    ),
                  ),
                  const SizedBox(height: 22),
                  Text(
                    'Al Quran',
                    style: GoogleFonts.poppins(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: const Color(0XFF87D1A4),
                    ),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'Learn Quran and Recite everyday',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      fontSize: 24,
                      fontWeight: FontWeight.w400,
                      // color: const Color(0XFF87D1A4),
                    ),
                  ),
                  const SizedBox(height: 22),
                  ElevatedButton(
                    style: ButtonStyle(
                      fixedSize: const MaterialStatePropertyAll(
                        Size(171, 53),
                      ),
                      backgroundColor: const MaterialStatePropertyAll(
                        Color(0XFF87D1A4),
                      ),
                      shape: MaterialStatePropertyAll(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Get Started',
                          style: GoogleFonts.montserrat(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: const Color(0XFF006754),
                          ),
                        ),
                        const SizedBox(width: 15),
                        const Icon(
                          Icons.arrow_right_alt_outlined,
                          color: Color(0XFF076C58),
                        ),
                      ],
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
