import 'dart:convert';

import 'package:al_quran/models/daftar_surat_model.dart';
import 'package:http/http.dart' as http;

class ApiServices {
  static const String _baseUrl = 'https://equran.id/api/surat';

  static Future<List<DaftarSuratModel>> getDaftarSurat() async {
    final response = await http.get(Uri.parse(_baseUrl));

    if (response.statusCode == 200) {
      final List<dynamic> body = jsonDecode(response.body);
      final List<DaftarSuratModel> daftarSurat =
          body.map((json) => DaftarSuratModel.fromJson(json)).toList();
      return daftarSurat;
    } else {
      throw Exception('Error get data');
    }
  }
}
