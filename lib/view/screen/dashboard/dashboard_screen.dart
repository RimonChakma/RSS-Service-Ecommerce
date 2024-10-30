import 'package:flutter/material.dart';
import 'package:rss_service_ecommerce/view/screen/dashboard/Home_screen.dart';
import 'package:rss_service_ecommerce/view/screen/dashboard/cart_screen.dart';
import 'package:rss_service_ecommerce/view/screen/dashboard/message_screen.dart';
import 'package:rss_service_ecommerce/view/screen/dashboard/profile_screen.dart';


class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {


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