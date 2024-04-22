import 'package:flutter/material.dart';
import '/backend/backend.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

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
    
    
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  

      bool _updateqty  = false;
    bool get updateqty => _updateqty;
    set updateqty(bool _value) {
      _updateqty = _value;
      
    }
    
    
  
    int _newqty  = 0;
    int get newqty => _newqty;
    set newqty(int _value) {
      _newqty = _value;
      
    }
    
    
  
    String _barcodeop  = '0';
    String get barcodeop => _barcodeop;
    set barcodeop(String _value) {
      _barcodeop = _value;
      
    }
    
    
  

  
}








