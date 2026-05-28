import 'package:e_comerse_app/consts/consts.dart';
import 'package:e_comerse_app/widget_common/bg_widget.dart';
import 'package:flutter/material.dart';

class CategoryDetailsScreen extends StatelessWidget {
  final String title;

  const CategoryDetailsScreen({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return bgWidget(
      child: Scaffold(
        backgroundColor: Colors.transparent,

        appBar: AppBar(
          title: title.text.fontFamily(bold).white.make(),
        ),

        body: Container(
          padding: EdgeInsets.all(12),
          child: Column(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal;

              
              
             child: Row(children: List.generate(6, (index)=>"Baby Clothing".text.size(12).fontFamily(semibold).makeCentered().box.white.rounded.size(120, 60).margin(EdgeInsets.symmetric(horizontal:4 )).make(),)
            )),
            
              
            ],
          
          ),
        )
      ),
    );
  }
}