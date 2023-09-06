import 'package:al_quran/view/pages/listeningpage.dart';
import 'package:al_quran/view/pages/quran_page.dart';
import 'package:al_quran/view/pages/recite_page.dart';
import 'package:al_quran/view/pages/test_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class CardMenu extends StatelessWidget {
  CardMenu({
    required this.title,
    required this.image,
    required this.background,
    required this.color,
    super.key,
  });

  String title;
  SvgPicture image;
  SvgPicture background;
  Color color;

  void _openPage(BuildContext context) {
    if (title == 'Quran') {
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => const QuranPage(),
      ));
    } else if (title == 'Listening') {
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => const ListeningPage(),
      ));
    } else if (title == 'Test') {
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => const TestPage(),
      ));
    } else {
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => const RecitePage(),
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        _openPage(context);
      },
      child: Container(
        width: 163,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Stack(
          children: [
            Positioned(
              bottom: 0,
              child: background,
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 20,
                left: 20,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    title,
                    style: GoogleFonts.montserrat(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: const Color(0XFF004B40),
                    ),
                  ),
                  const SizedBox(height: 50),
                  Container(
                    padding: const EdgeInsets.only(bottom: 20),
                    // margin: const EdgeInsets.only(left: 5),
                    // color: Colors.amber,
                    child: image,
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
