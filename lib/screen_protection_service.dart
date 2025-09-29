import 'package:flutter/foundation.dart';
import 'package:screen_protector/screen_protector.dart';

class ScreenProtectionService {
  static final ScreenProtectionService _instance = ScreenProtectionService._internal();
  factory ScreenProtectionService() => _instance;
  ScreenProtectionService._internal();

  int _referenceCount = 0;
  bool _isProtectionActive = false;

  Future<void> enableProtection() async {
    _referenceCount++;
    
    if (!_isProtectionActive) {
      try {
        await ScreenProtector.protectDataLeakageOn();
        _isProtectionActive = true;
        debugPrint('Screen protection enabled. Reference count: $_referenceCount');
      } catch (e) {
        debugPrint('Error enabling screen protection: $e');
      }
    } else {
      debugPrint('Screen protection already active. Reference count: $_referenceCount');
    }
  }

  Future<void> disableProtection() async {
    if (_referenceCount > 0) {
      _referenceCount--;
    }
    
    if (_referenceCount == 0 && _isProtectionActive) {
      try {
        await ScreenProtector.protectDataLeakageOff();
        _isProtectionActive = false;
        debugPrint('Screen protection disabled. Reference count: $_referenceCount');
      } catch (e) {
        debugPrint('Error disabling screen protection: $e');
      }
    } else {
      debugPrint('Screen protection kept active. Reference count: $_referenceCount');
    }
  }

  Future<void> forceDisableProtection() async {
    _referenceCount = 0;
    if (_isProtectionActive) {
      try {
        await ScreenProtector.protectDataLeakageOff();
        _isProtectionActive = false;
        debugPrint('Screen protection force disabled');
      } catch (e) {
        debugPrint('Error force disabling screen protection: $e');
      }
    }
  }

  bool get isProtectionActive => _isProtectionActive;
  int get referenceCount => _referenceCount;
}