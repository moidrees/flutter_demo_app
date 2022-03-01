import 'dart:async';

import 'package:geolocator/geolocator.dart';
import 'package:permission_handler/permission_handler.dart';

class Location {
  late double latitude;
  late double  longitude;
  late Position _position;
  StreamController<bool> _locationFetchedStream = StreamController<bool>();

  Future<void> getCurrentLocation() async {
    await requestLocationPermission();
    try {
      _position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.high);
      latitude = _position.latitude;
      longitude = _position.longitude;
    } catch (e) {
      print(e);
    }
  }

  Future<void> requestLocationPermission() async {
    final serviceStatusLocation = await Permission.locationWhenInUse.isGranted ;
    final status = await Permission.locationWhenInUse.request();
    if (status == PermissionStatus.granted) {
      print('Permission Granted');
    } else if (status == PermissionStatus.denied) {
      print('Permission denied');
    } else if (status == PermissionStatus.permanentlyDenied) {
      print('Permission Permanently Denied');
      await openAppSettings();
    }
  }

  StreamController<bool> get locationFetchedStream => _locationFetchedStream;
}