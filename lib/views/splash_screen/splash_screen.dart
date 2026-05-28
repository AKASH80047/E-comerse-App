import 'package:e_comerse_app/views/auth_screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:e_comerse_app/consts/consts.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    changeScreen();
  }

  void changeScreen() {
    Future.delayed(const Duration(seconds: 3), () {
      Get.off(() => const LoginScreen());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: redColor,
      body: Center(
        child: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Image.asset(icSplashBg, width: 300),
            ),

            20.heightBox,
            appLogoWidget(),

            10.heightBox,
            appName.text.fontFamily(bold).size(22).white.make(),

            5.heightBox,
            appVersion.text.white.make(),

            const Spacer(),

            credits.text.white.fontFamily(semibold).make(),

            30.heightBox,
          ],
        ),
      ),
    );
  }
}
