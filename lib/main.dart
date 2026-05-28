import 'package:e_comerse_app/consts/styles.dart';
import 'package:e_comerse_app/views/splash_screen/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart'; 

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'E-Commerce App',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.transparent,
          // fontFamily property AppBarTheme में नहीं होता
          titleTextStyle: TextStyle(
            fontFamily: regular, // styles.dart से आने वाला font name
          ),
        ),
      ),
      home: const SplashScreen(),
    );
  }
}