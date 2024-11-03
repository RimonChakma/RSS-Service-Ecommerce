import 'package:flutter/material.dart';
import 'package:rss_service_ecommerce/view/screen/Bottom_Nav_Bar/Bottom_nav_bar.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BottomNavBar()
    );
  }
}
