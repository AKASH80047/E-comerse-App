import 'package:e_comerse_app/home_screen/home_screen.dart';
import 'package:e_comerse_app/views/cart_screen/cart_screen.dart';
import 'package:e_comerse_app/views/categry_screen/categry_screens.dart';
import 'package:e_comerse_app/views/profile_screen/profile_screen.dart';

import 'package:flutter/material.dart';

import 'package:e_comerse_app/consts/consts.dart';

class HomeController extends StatefulWidget {
  
  const HomeController({super.key});

  @override
  State<HomeController> createState() => _HomeControllerState();
  
}

class _HomeControllerState extends State<HomeController> {
  int currentNavIndex = 0;

  @override
  Widget build(BuildContext context) {
    var navbarItem = [

      
      BottomNavigationBarItem(
    
        
        icon: Image.asset(icHome,width: 26,
         color: currentNavIndex == 0 ? redColor : darkFontGrey),
        label: home,
      
      ),

      BottomNavigationBarItem(
        icon: Image.asset(icCategories,width: 26, color: currentNavIndex == 1 ? redColor : darkFontGrey),
        label: categories,
      ),

      BottomNavigationBarItem(
        icon: Image.asset(icCart, width: 26, color: currentNavIndex == 2 ? redColor : darkFontGrey),
        label: cart,
      ),

      BottomNavigationBarItem(
        icon: Image.asset("assets/icons/account.png", width: 26, color: currentNavIndex == 3 ? redColor : darkFontGrey),
        label: account,
      ),
    ];

    var navBody = [
      const HomeScreen(),
      const CategoryScreen(),
      const CartScreen(),
      const ProfileScreen(),

      // Container(
      //   color: Colors.blue,
      //   child: const Center(
      //     child: Text(
      //       "Home",
      //       style: TextStyle(fontSize: 20),
      //     ),
      //   ),
      // ),

      // Container(
      //   color: Colors.amber,
      //   child: const Center(
      //     child: Text(
      //       "Categories",
      //       style: TextStyle(fontSize: 20),
      //     ),
      //   ),
      // ),

      // Container(
      //   color: Colors.purple,
      //   child: const Center(
      //     child: Text(
      //       "Cart",
      //       style: TextStyle(fontSize: 20),
      //     ),
      //   ),
      // ),

      // Container(
      //   color: Colors.cyan,
      //   child: const Center(
      //     child: Text(
      //       "Account",
      //       style: TextStyle(fontSize: 20),
      //     ),
      //   ),
      // ),
    ];

    return Scaffold(
      body: navBody[currentNavIndex],

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentNavIndex,

        selectedItemColor: redColor,
    
        
        selectedIconTheme: const IconThemeData(color: redColor, size: 40),
        unselectedIconTheme: const IconThemeData(color: darkFontGrey, size: 16),

        unselectedItemColor: darkFontGrey,
        
        selectedFontSize: 15,
        unselectedFontSize: 12,

        selectedLabelStyle: const TextStyle(color: redColor),

        unselectedLabelStyle: const TextStyle(color: darkFontGrey),

        type: BottomNavigationBarType.fixed,

        backgroundColor: whiteColor,

        items: navbarItem,

        onTap: (value) {
          setState(() {
            currentNavIndex = value;
          });
        },
      ),
    );
  }
}
