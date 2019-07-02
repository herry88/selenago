import 'package:flutter/cupertino.dart';

double getWidth(BuildContext context, double size) {
  return MediaQuery.of(context).size.width * size / 100;
}

double getHeight(BuildContext context, double size) {
  return MediaQuery.of(context).size.height * size / 100;
}