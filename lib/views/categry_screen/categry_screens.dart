import 'package:e_comerse_app/consts/consts.dart';
import 'package:e_comerse_app/consts/list.dart';
import 'package:e_comerse_app/widget_common/bg_widget.dart';
import 'package:e_comerse_app/views/categry_screen/categry_details.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CategoryScreen extends StatelessWidget {
  final String title;

  const CategoryScreen({super.key, this.title = categories});

  @override
  Widget build(BuildContext context) {
    return bgWidget(
      child: Scaffold(
        backgroundColor: Colors.transparent,

        appBar: AppBar(title: title.text.fontFamily(bold).white.make()),

        body: Padding(
          padding: const EdgeInsets.all(12),

          child: GridView.builder(
            itemCount: categoryImages.length,

            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 12,
              crossAxisSpacing: 12,
              mainAxisExtent: 210,
            ),

            itemBuilder: (context, index) {
              return Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    

                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(6),

                        child: Image.asset(
                          categoryImages[index],
                        

                          width: double.infinity,
                          height: 150,
                          fit: BoxFit.cover,

                          errorBuilder: (context, error, stackTrace) {
                            return Container(
                              width: double.infinity,
                              height: 150,
                              color: lightGrey,
                              alignment: Alignment.center,
                              padding: const EdgeInsets.all(8),

                              child: categoryImages[index].text.center
                                  .size(11)
                                  .color(redColor)
                                  .make(),
                            );
                          },
                        ),
                      ),

                      10.heightBox,

                      categoryTitles[index].text
                          .fontFamily(semibold)
                          .color(darkFontGrey)
                          .size(15)
                          .make(),
                    ],
                  ).box.white.roundedSM
                  .clip(Clip.antiAlias)
                  .outerShadowSm
                  .make()
                  .onTap(() {
                    Get.to(
                      () => CategoryDetailsScreen(title: categoryTitles[index]),
                    );
                  });
            },
          ),
        ),
      ),
    );
  }
}
