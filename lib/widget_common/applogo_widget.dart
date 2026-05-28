// lib/widget_common/applogo_widget.dart

import 'package:flutter/material.dart';
import 'package:e_comerse_app/consts/consts.dart';

Widget appLogoWidget() {
  return Image.asset(
    icAppLogo,
  )
      .box
      .white
      .size(77, 77)
      .padding(const EdgeInsets.all(8))
      .rounded
      .make();
}