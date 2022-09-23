import 'package:flutter/material.dart';

class SizeConfig {

  static  double screenWidth=404;
  static  double screenHeight=674;
  static  double? defaultSize;
  static  Orientation? orientation;


}

getImageNetwork(url) {
  return url;
}

getHeight(width, [String ratio = "16:9"]) {
  var split = ratio.split(":");
  var wr = double.parse(split[0]);
  var hr = double.parse(split[1]);
  return (width / wr) * hr;
}