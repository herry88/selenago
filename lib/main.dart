import 'package:flutter/material.dart';
import 'package:selenago_test/ui/main_view.dart';

void main() {
  runApp(MaterialApp(
    title: 'Selenago Test',
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      fontFamily: 'AvenirNextRegular',
    ),
    home: MainView(),
  ));
}
