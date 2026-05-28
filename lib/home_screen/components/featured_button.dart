import 'package:flutter/material.dart';
import 'package:e_comerse_app/consts/consts.dart';

Widget featuredButton({required String icon, required String title}) {
  return Row(
        children: [
          Image.asset(icon, width: 40, height: 40, fit: BoxFit.fill),

          10.widthBox,

          Expanded(
            child: title.text.fontFamily(semibold).color(darkFontGrey).make(),
          ),
        ],
      ).box
      .width(160)
      .roundedSM
      .white
      .padding(const EdgeInsets.all(8))
      .margin(const EdgeInsets.symmetric(horizontal: 4))
      .make();
}
