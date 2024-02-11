import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _RemoveAds24hrs = prefs.getInt('ff_RemoveAds24hrs') ?? _RemoveAds24hrs;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  String _nbSTATE = '';
  String get nbSTATE => _nbSTATE;
  set nbSTATE(String value) {
    _nbSTATE = value;
  }

  int _firstband = 0;
  int get firstband => _firstband;
  set firstband(int value) {
    _firstband = value;
  }

  int _secondband = 0;
  int get secondband => _secondband;
  set secondband(int value) {
    _secondband = value;
  }

  String _band1color = '';
  String get band1color => _band1color;
  set band1color(String value) {
    _band1color = value;
  }

  String _band2color = '';
  String get band2color => _band2color;
  set band2color(String value) {
    _band2color = value;
  }

  String _band3color = '';
  String get band3color => _band3color;
  set band3color(String value) {
    _band3color = value;
  }

  String _multipliercolor = '';
  String get multipliercolor => _multipliercolor;
  set multipliercolor(String value) {
    _multipliercolor = value;
  }

  int _RemoveAds24hrs = 0;
  int get RemoveAds24hrs => _RemoveAds24hrs;
  set RemoveAds24hrs(int value) {
    _RemoveAds24hrs = value;
    prefs.setInt('ff_RemoveAds24hrs', value);
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
