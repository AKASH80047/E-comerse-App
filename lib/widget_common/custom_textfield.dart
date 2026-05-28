import 'package:e_comerse_app/consts/consts.dart';
import 'package:flutter/material.dart';

Widget customTextField({
  String? title,
  String? hint,
  bool isPass = false,
}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [

      title!.text
          .color(darkFontGrey)
          .fontFamily(semibold)
          .size(16)
          .make(),

      5.heightBox,

      TextFormField(
        obscureText: isPass,

        decoration: InputDecoration(
          hintText: hint,

          hintStyle: const TextStyle(
            color: textfieldGrey,
          ),

          isDense: true,

          fillColor: lightGrey,
          filled: true,

          border: InputBorder.none,

          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: redColor,
            ),
          ),
        ),
      ),
    ],
  );
}