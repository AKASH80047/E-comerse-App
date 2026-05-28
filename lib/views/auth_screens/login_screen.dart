import 'package:e_comerse_app/home_screen/home_controller.dart';
import 'package:e_comerse_app/views/auth_screens/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:e_comerse_app/consts/consts.dart';
import 'package:e_comerse_app/consts/list.dart';
import 'package:e_comerse_app/widget_common/bg_widget.dart';
import 'package:e_comerse_app/widget_common/custom_textfield.dart';
import 'package:e_comerse_app/widget_common/our_button.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,

      body: bgWidget(
        child: Column(
          children: [
            // Top Space
            (context.screenHeight * 0.1).heightBox,

            // App Logo
            appLogoWidget(),

            10.heightBox,

            // Title
            "Log in to $appName".text.white.fontFamily(bold).size(18).make(),

            15.heightBox,

            // Login Form Box
            Column(
                  children: [
                    // Email TextField
                    customTextField(hint: emailHint, title: email),

                    10.heightBox,

                    // Password TextField
                    customTextField(
                      hint: passwordHint,
                      title: password,
                      isPass: true,
                    ),

                    // Forgot Password
                    Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        onPressed: () {},
                        child: forgetPassword.text.make(),
                      ),
                    ),

                    10.heightBox,

                    // Login Button
                    ourButton(
                      () {
                        Get.to(() => const HomeController());
                      },
                      redColor,
                      whiteColor,
                      login,
                    ).box.width(context.screenWidth - 70).make(),

                    10.heightBox,

                    // Create Account Text
                    createNewAccount.text.color(fontGrey).make(),

                    10.heightBox,

                    // Signup Button
                    ourButton(
                      () { 
                        Get.to(() => const SignupScreen());
                      },
                      lightGrey,
                      redColor,
                      signup,
                    ).box.width(context.screenWidth - 70).make(),

                    15.heightBox,

                    // Login With Text
                    loginWith.text.color(fontGrey).make(),

                    10.heightBox,

                    // Social Icons
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        socialIconList.length,
                        (index) => Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CircleAvatar(
                            backgroundColor: lightGrey,
                            radius: 25,
                            child: Image.asset(
                              socialIconList[index],
                              width: 30,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ).box.white.rounded
                .padding(const EdgeInsets.all(16))
                .width(context.screenWidth - 70)
                .shadowSm
                .make(),
          ],
        ),
      ),
    );
  }
}
