import 'package:flutter/cupertino.dart';
import 'package:selenago_test/helper/media_query.dart';
import 'app_colors.dart';

Widget paddingTop(BuildContext context, double size) {
  return Padding(
    padding: EdgeInsets.only(
      top: getHeight(context, size)
    ),
  );
}

Widget paddingEnd(BuildContext context, double size) {
  return Padding(
    padding: EdgeInsets.only(
      right: getWidth(context, size)
    ),
  );
}

Widget lineDivider(Color color) {
  return Container(
    height: 1.0,
    color: color,
  );
}

Widget roundedIcon(IconData icon) {
  return Container(
    width: 34.0,
    height: 34.0,
    decoration: BoxDecoration(
      color: Color.fromRGBO(255, 255, 255, 0.35),
      shape: BoxShape.circle,
    ),
    child: Center(
      child: Icon(
        icon,
        color: AppColors.white,
      ),
    ),
  );
}