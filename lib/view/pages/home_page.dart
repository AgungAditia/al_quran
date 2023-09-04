import 'package:al_quran/view/widgets/menu_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Al - Quran',
          style: GoogleFonts.poppins(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: const Color(0XFF004B40),
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
              color: Color(0XFF888888),
              size: 25,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              // width: 360,
              height: 170,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(23),
                gradient: const LinearGradient(
                  colors: [
                    Color(0XFF006754),
                    Color(0XFF87D1A4),
                  ],
                  stops: [0.0, 1.0],
                  begin: Alignment.centerLeft,
                  end: FractionalOffset.bottomCenter,
                ),
              ),
              child: Stack(
                children: [
                  Positioned(
                    bottom: 0,
                    child: SvgPicture.asset('assets/images/vector1.svg'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Last Read',
                                style: GoogleFonts.poppins(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white,
                                ),
                              ),
                              const SizedBox(height: 11),
                              Text(
                                'ةحتافلا',
                                style: GoogleFonts.poppins(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                'Ayat no. 1',
                                style: GoogleFonts.poppins(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w300,
                                  color: Colors.white,
                                ),
                              ),
                              const SizedBox(height: 8),
                              ElevatedButton(
                                style: ButtonStyle(
                                  fixedSize: const MaterialStatePropertyAll(
                                    Size(115, 31),
                                  ),
                                  backgroundColor:
                                      const MaterialStatePropertyAll(
                                    Color(0XFFFAF6EB),
                                  ),
                                  shape: MaterialStatePropertyAll(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                  ),
                                ),
                                child: Row(
                                  children: [
                                    Text(
                                      'Continue',
                                      style: GoogleFonts.montserrat(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.black,
                                      ),
                                    ),
                                    const Icon(
                                      Icons.arrow_right_alt,
                                      color: Colors.black,
                                    )
                                  ],
                                ),
                                onPressed: () {},
                              )
                            ],
                          ),
                        ),
                        Expanded(
                            child:
                                SvgPicture.asset('assets/images/alquran.svg')),
                      ],
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 30),
            Text(
              'Popular',
              style: GoogleFonts.montserrat(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: const Color(0XFF004B40),
              ),
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CardMenu(
                  title: 'Quran',
                  color: const Color(0XFFE2F6F8),
                  image: SvgPicture.asset('assets/images/quran.svg'),
                  background: SvgPicture.asset('assets/images/vector2.svg'),
                ),
                CardMenu(
                  title: 'Listening',
                  color: const Color(0XFFFEF6F4),
                  image: SvgPicture.asset('assets/images/listening.svg'),
                  background: SvgPicture.asset('assets/images/vector3.svg'),
                )
              ],
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CardMenu(
                  title: 'Test',
                  color: const Color(0XFFFFFAF0),
                  image: SvgPicture.asset('assets/images/test.svg'),
                  background: SvgPicture.asset('assets/images/vector4.svg'),
                ),
                CardMenu(
                  title: 'Recite',
                  color: const Color(0XFFF5F6FD),
                  image: SvgPicture.asset('assets/images/recite.svg'),
                  background: SvgPicture.asset('assets/images/vector5.svg'),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
