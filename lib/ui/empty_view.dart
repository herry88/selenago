import 'package:flutter/material.dart';
import 'package:selenago_test/helper/app_colors.dart';

class EmptyView extends StatelessWidget {

  final String text;

  EmptyView({this.text});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          text,
          style: TextStyle(
            fontSize: 16.0,
            fontFamily: 'AvenirNextDemiBold',
            color: AppColors.codGray,
          ),
        ),
      ),
    );
  }
}