import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:e_comerse_app/consts/consts.dart';
import 'package:e_comerse_app/consts/list.dart';

import 'package:e_comerse_app/widget_common/bg_widget.dart';
import 'package:e_comerse_app/widget_common/custom_textfield.dart';
import 'package:e_comerse_app/widget_common/our_button.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  bool isCheck = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,

      body: bgWidget(
        child: Column(
          children: [
            // Top Space
            (context.screenHeight * 0.05).heightBox,

            // App Logo
            appLogoWidget(),

            10.heightBox,

            // Title
            "Sign up for $appName".text.white.fontFamily(bold).size(18).make(),

            15.heightBox,

            // Signup Form
            Column(
                  children: [
                    // Name Field
                    customTextField(hint: nameHint, title: name),

                    10.heightBox,

                    // Email Field
                    customTextField(hint: emailHint, title: email),

                    10.heightBox,

                    // Password Field
                    customTextField(
                      hint: passwordHint,
                      title: password,
                      isPass: true,
                    ),

                    10.heightBox,

                    // Retype Password
                    customTextField(
                      hint: passwordHint,
                      title: retypePassword,
                      isPass: true,
                    ),

                    20.heightBox,

                    // Terms & Conditions
                    Row(
                      children: [
                        Checkbox(
                          checkColor: whiteColor,
                          activeColor: redColor,
                          value: isCheck,

                          onChanged: (value) {
                            setState(() {
                              isCheck = value!;
                            });
                          },
                        ),

                        10.widthBox,

                        Expanded(
                          child: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: "I agree to the ",
                                  style: TextStyle(
                                    color: fontGrey,
                                    fontFamily: regular,
                                  ),
                                ),

                                TextSpan(
                                  text: "Terms and Conditions ",
                                  style: TextStyle(
                                    color: redColor,
                                    fontFamily: semibold,
                                  ),
                                ),

                                TextSpan(
                                  text: "and ",
                                  style: TextStyle(
                                    color: fontGrey,
                                    fontFamily: regular,
                                  ),
                                ),

                                TextSpan(
                                  text: "Privacy Policy",
                                  style: TextStyle(
                                    color: redColor,
                                    fontFamily: semibold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),

                    20.heightBox,

                    // Signup Button
                    SizedBox(
                      width: context.screenWidth - 70,

                      child: ourButton(
                        () {
                          if (isCheck) {
                            Get.snackbar(
                              "Success",
                              "Account Created Successfully",
                              backgroundColor: Vx.green400,
                              colorText: whiteColor,
                            );
                          } else {
                            Get.snackbar(
                              "Warning",
                              "Please accept Terms & Conditions",
                              backgroundColor: redColor,
                              colorText: whiteColor,
                            );
                          }
                        },

                        isCheck ? redColor : lightGrey,

                        whiteColor,

                        signup,
                      ),
                    ),

                    15.heightBox,

                    // Already Have Account
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,

                      children: [
                        alreadyHaveAccount.text.color(fontGrey).make(),

                        5.widthBox,

                        GestureDetector(
                          onTap: () {
                            Get.back();
                          },

                          child: login.text
                              .color(redColor)
                              .fontFamily(semibold)
                              .make(),
                        ),
                      ],
                    ),

                    20.heightBox,

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

                            // child: Image.asset(
                            //   socialIconList[index],
                            //   width: 30,
                            // ),
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
