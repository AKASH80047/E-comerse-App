import 'package:e_comerse_app/home_screen/components/featured_button.dart';
import 'package:e_comerse_app/home_screen/home_button.dart';
import 'package:flutter/material.dart';
import 'package:e_comerse_app/consts/consts.dart';
import 'package:e_comerse_app/consts/list.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightGrey,

      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(12.0),

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Search Bar
                Container(
                  alignment: Alignment.center,
                  height: 60,
                  width: context.screenWidth,
                  color: lightGrey,

                  child: TextFormField(
                    decoration: const InputDecoration(
                      suffixIcon: Icon(Icons.search),
                      filled: true,
                      fillColor: whiteColor,
                      hintText: searchAnything,
                      border: InputBorder.none,
                    ),
                  ),
                ),

                10.heightBox,

                // First Slider
                VxSwiper.builder(
                  aspectRatio: 16 / 9,
                  autoPlay: true,
                  height: 150,
                  enlargeCenterPage: true,
                  itemCount: slidersList.length,

                  itemBuilder: (context, index) {
                    return Image.asset(slidersList[index], fit: BoxFit.fill)
                        .box
                        .rounded
                        .clip(Clip.antiAlias)
                        .margin(const EdgeInsets.symmetric(horizontal: 8))
                        .make();
                  },
                ),

                10.heightBox,

                // Today's Deal & Flash Sale
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                  children: [
                    homeButton(
                      width: context.screenWidth / 2.5,
                      height: 80,
                      icon: icTodaysDeal,
                      title: todayDeals,
                      onPress: () {},
                    ),

                    homeButton(
                      width: context.screenWidth / 2.5,
                      height: 80,
                      icon: icFlashDeal,
                      title: flashSale,
                      onPress: () {},
                    ),
                  ],
                ),

                20.heightBox,

                // Second Slider
                VxSwiper.builder(
                  aspectRatio: 16 / 9,
                  autoPlay: true,
                  height: 150,
                  enlargeCenterPage: true,
                  itemCount: secondSlidersList.length,

                  itemBuilder: (context, index) {
                    return Image.asset(
                          secondSlidersList[index],
                          fit: BoxFit.fill,
                        ).box.rounded
                        .clip(Clip.antiAlias)
                        .margin(const EdgeInsets.symmetric(horizontal: 8))
                        .make();
                  },
                ),

                20.heightBox,

                // Featured Categories Title
                featuredCategories.text
                    .color(darkFontGrey)
                    .fontFamily(semibold)
                    .size(18)
                    .make(),

                10.heightBox,

                // Featured Categories
                Column(
                  children: [
                    Row(
                      children: [
                        featuredButton(icon: icWomenDress, title: womenDress),

                        featuredButton(icon: icBoysGlasses, title: boysGlasses),
                      ],
                    ),

                    10.heightBox,

                    Row(
                      children: [
                        featuredButton(icon: icMenDress, title: menDress),

                        featuredButton(icon: icMobileApp, title: mobileApp),
                      ],
                    ),
                  ],
                ),

                20.heightBox,

                // Featured Products
                Container(
                  padding: const EdgeInsets.all(12),
                  width: double.infinity,

                  decoration: const BoxDecoration(color: redColor),

                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,

                    children: [
                      featuredProduct.text.white
                          .fontFamily(bold)
                          .size(18)
                          .make(),

                      10.heightBox,

                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,

                        child: Row(
                          children: List.generate(
                            6,
                            (index) =>
                                Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,

                                      children: [
                                        Image.asset(
                                              imgP1,
                                              width: 150,
                                              height: 150,
                                              fit: BoxFit.cover,
                                            ).box.white.rounded
                                            .padding(const EdgeInsets.all(8))
                                            .make(),

                                        10.heightBox,

                                        "Laptop 4GB/64GB".text.white
                                            .fontFamily(semibold)
                                            .make(),

                                        10.heightBox,

                                        "\$600".text
                                            .color(
                                              const Color.fromARGB(
                                                255,
                                                166,
                                                192,
                                                1,
                                              ),
                                            )
                                            .fontFamily(bold)
                                            .size(16)
                                            .make(),
                                      ],
                                    ).box
                                    .margin(
                                      const EdgeInsets.symmetric(horizontal: 4),
                                    )
                                    .make(),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                20.heightBox,

                // Third Slider
                VxSwiper.builder(
                  aspectRatio: 16 / 9,
                  autoPlay: true,
                  height: 150,
                  enlargeCenterPage: true,
                  itemCount: secondSlidersList.length,

                  itemBuilder: (context, index) {
                    return Image.asset(
                          secondSlidersList[index],
                          fit: BoxFit.fill,
                        ).box.rounded
                        .clip(Clip.antiAlias)
                        .margin(const EdgeInsets.symmetric(horizontal: 8))
                        .make();
                  },
                ),

                20.heightBox,

                // All Products Section
                GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),

                  shrinkWrap: true,
                  itemCount: 6,

                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 8,
                    mainAxisExtent: 300,
                  ),

                  itemBuilder: (context, index) {
                    return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,

                          children: [
                            Image.asset(
                              imgP5,
                              width: double.infinity,
                              height: 200,
                              fit: BoxFit.cover,
                            ),

                            10.heightBox,

                            "Laptop 4GB/64GB".text
                                .fontFamily(semibold)
                                .color(darkFontGrey)
                                .make(),

                            10.heightBox,

                            "\$600".text
                                .color(redColor)
                                .fontFamily(bold)
                                .size(16)
                                .make(),
                          ],
                        ).box.white.roundedSM
                        .padding(const EdgeInsets.all(12))
                        .make();
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
