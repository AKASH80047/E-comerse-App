import 'package:e_comerse_app/consts/colors.dart';
import 'package:flutter/material.dart';

class ItemDetail extends StatelessWidget {
  final String? title;
  const ItemDetails({ Key ? key,required this.title}):super(key:key);




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightGrey,
      appBar: AppBar(
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.share)),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.favorite_outline),
          ),
        ],
      ),
      body: Container(),
    );
  }
}
