import 'package:al_quran/apis/api_services.dart';
import 'package:al_quran/models/daftar_surat_model.dart';
import 'package:flutter/material.dart';

enum RequestState { empty, loading, loaded, error }

class SuratProvider extends ChangeNotifier {
  List<DaftarSuratModel> _daftarSurat = [];
  List<DaftarSuratModel> get daftarSurat => _daftarSurat;

  RequestState _requestState = RequestState.empty;
  RequestState get requestState => _requestState;

  String _message = '';
  String get message => _message;

  Future<void> fetchDaftarSurat() async {
    _requestState = RequestState.loading;
    notifyListeners();
    try {
      final result = await ApiServices.getDaftarSurat();
      _daftarSurat = result;
      _requestState = RequestState.loaded;
      notifyListeners();
    } catch (e) {
      _requestState = RequestState.error;
      _message = 'Error : $e';
      notifyListeners();
    }
  }
}
