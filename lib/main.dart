import 'package:flutter/material.dart';
import 'package:rss_service_ecommerce/view/screen/dashboard/dashboard_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DashboardScreen()
    );
  }
}
