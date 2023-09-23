import 'package:al_quran/models/daftar_surat_model.dart';
import 'package:al_quran/view/pages/detail_surat_page.dart';
import 'package:al_quran/view_model/provider/daftar_surat_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:contained_tab_bar_view/contained_tab_bar_view.dart';
import 'package:provider/provider.dart';

class QuranPage extends StatefulWidget {
  const QuranPage({super.key});

  @override
  State<QuranPage> createState() => _QuranPageState();
}

class _QuranPageState extends State<QuranPage> {
  @override
  void initState() {
    super.initState();
    Future.microtask(() =>
        Provider.of<SuratProvider>(context, listen: false).fetchDaftarSurat());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Color(0XFF292D32),
            ),
          ),
          elevation: 0,
          backgroundColor: Colors.white,
          title: Text(
            'Quran',
            style: GoogleFonts.montserrat(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: const Color(0XFF076C58),
            ),
          ),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
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
                                SvgPicture.asset('assets/images/alquran.svg'),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: ContainedTabBarView(
                tabBarProperties: const TabBarProperties(
                  indicatorColor: Color(0XFF076D59),
                ),
                tabs: [
                  Text(
                    'Surat',
                    style: GoogleFonts.montserrat(
                      color: const Color(0XFF066C58),
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Traslate',
                    style: GoogleFonts.montserrat(
                      color: const Color(0XFF066C58),
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'play',
                    style: GoogleFonts.montserrat(
                      color: const Color(0XFF066C58),
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
                views: [
                  Padding(
                    padding: const EdgeInsets.all(26.0),
                    child: Consumer<SuratProvider>(
                      builder: (context, daftarSuratProvider, child) {
                        if (daftarSuratProvider.requestState ==
                            RequestState.loading) {
                          return const Center(
                            child: CircularProgressIndicator(),
                          );
                        } else if (daftarSuratProvider.requestState ==
                            RequestState.loaded) {}
                        return ListView.builder(
                          itemCount: daftarSuratProvider.daftarSurat.length,
                          itemBuilder: (context, index) {
                            final surat =
                                daftarSuratProvider.daftarSurat[index];
                            return InkWell(
                              onTap: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        const DetailSuratPage(),
                                  ),
                                );
                              },
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        width: 40,
                                        height: 40,
                                        decoration: BoxDecoration(
                                          color: const Color(0XFF87D1A4),
                                          borderRadius:
                                              BorderRadius.circular(9),
                                        ),
                                        child: Center(
                                          child: Text(
                                            surat.nomor.toString(),
                                            style: GoogleFonts.montserrat(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w400,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(width: 20),
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              surat.namaLatin,
                                              style: GoogleFonts.montserrat(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                            Row(
                                              children: [
                                                Text(
                                                  tempatTurunValues.reverse[
                                                      surat.tempatTurun]!,
                                                  style: GoogleFonts.montserrat(
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w400,
                                                  ),
                                                ),
                                                const Icon(
                                                  Icons.circle,
                                                  size: 6,
                                                  color: Color(0XFFBBC4CE),
                                                ),
                                                const SizedBox(width: 5),
                                                Text(
                                                  '${surat.jumlahAyat} Verses',
                                                  style: GoogleFonts.montserrat(
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w400,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                      Text(
                                        surat.nama,
                                        style: GoogleFonts.montserrat(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: const Color(0XFF076C58),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 10),
                                  const Divider(
                                    color: Color(0XFFD9D8D8),
                                    thickness: 1,
                                  ),
                                ],
                              ),
                            );
                          },
                        );
                      },
                    ),
                  ),
                  Container(color: Colors.green),
                  Container(color: Colors.amber),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
