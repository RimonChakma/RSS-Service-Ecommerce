import 'package:flutter/material.dart';
import 'package:rss_service_ecommerce/view/screen/Bottom_Nav_Bar/home/Home_screen.dart';
import 'package:rss_service_ecommerce/view/screen/Bottom_Nav_Bar/cart/cart_screen.dart';
import 'package:rss_service_ecommerce/view/screen/Bottom_Nav_Bar/message/message_screen.dart';
import 'package:rss_service_ecommerce/view/screen/Bottom_Nav_Bar/profile/profile_screen.dart';


class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {


  int CurrentIndex = 0;

  List<Widget> screen = [
  HomeScreen(),
  CartScreen(),
  MessageScreen(),
  ProfileScreen()


  ];



  @override
  Widget build(BuildContext context) {


  
    return Scaffold(
      body: screen[CurrentIndex],

      bottomNavigationBar: BottomNavigationBar(

        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.red,
        showUnselectedLabels: true,
        currentIndex: CurrentIndex,
        type: BottomNavigationBarType.fixed,        
        
        onTap: (value) {
          
          setState(() {
            CurrentIndex = value;
          });
        },
      
        
        
        items: [
        BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.message),label: "Message"),
        BottomNavigationBarItem(icon: Icon(Icons.shopping_cart),label: "Cart"),
        BottomNavigationBarItem(icon: Icon(Icons.person),label: "profile")
      ]),




    );
  }
}