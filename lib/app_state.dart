import 'package:flutter/material.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  String _SexPhoto = '';
  String get SexPhoto => _SexPhoto;
  set SexPhoto(String value) {
    _SexPhoto = value;
  }

  bool _onof = false;
  bool get onof => _onof;
  set onof(bool value) {
    _onof = value;
  }
}
