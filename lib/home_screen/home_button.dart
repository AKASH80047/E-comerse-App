import 'package:flutter/material.dart';

import 'package:e_comerse_app/consts/consts.dart';

Widget homeButton({
  required double width,
  required double height,
  required String icon,
  required String title,
  required VoidCallback onPress,
}) {
  return GestureDetector(
    onTap: onPress,
    child: Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(icon, width: 26, fit: BoxFit.contain),

          10.heightBox,

          Text(
            title,
            style: TextStyle(fontFamily: semibold, color: darkFontGrey),
          ),
        ],
      ),
    ),
  );
}
