import 'package:al_quran/view/pages/detail_surat_page.dart';
import 'package:al_quran/view/pages/home_page.dart';
import 'package:al_quran/view/pages/quran_page.dart';
import 'package:al_quran/view_model/provider/daftar_surat_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'view/pages/onboarding_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SuratProvider(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: QuranPage(),
      ),
    );
  }
}
