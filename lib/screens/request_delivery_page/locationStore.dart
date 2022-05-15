import 'dart:async';

import 'package:oxen/flutter_flow/lat_lng.dart';


class LocationStore {

  static Map _defaultValues = {"name":"", "latitude":"", "longitude":""};
  static Map _startLocation = _defaultValues;
  static Map _endLocation = _defaultValues;



  static void setStartLocation(Map sLocation){
    _startLocation.clear();
    _startLocation.addAll(sLocation);
  }

  static void setEndLocation(Map eLocation){
    _endLocation.clear();
    _endLocation.addAll(eLocation);
  }

  static Map getStartLocation(){
    return _startLocation;
  }

  static Map getEndLocation(){
    return _endLocation;
  }

  static bool startLocationExists(){
    if(_startLocation["name"] == ''){
      return false;
    }
    return true;
  }

  static bool endLocationExists(){
    if(_endLocation["name"] == ''){
      return false;
    }
    return true;
  }

  static void clearStartLocation(){
    setStartLocation(_defaultValues);
  }

  static void clearEndLocation(){
    setEndLocation(_defaultValues);
  }

}