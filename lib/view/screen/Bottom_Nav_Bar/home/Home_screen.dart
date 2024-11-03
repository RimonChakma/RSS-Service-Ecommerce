
import 'package:flutter/material.dart';
import 'package:rss_service_ecommerce/view/screen/Bottom_Nav_Bar/home/components/Banner_section%20.dart';
import 'package:rss_service_ecommerce/view/screen/Bottom_Nav_Bar/home/components/Home_app_bar.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

 

  @override
  Widget build(BuildContext context) {

  
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: SafeArea(
          child: Column(
            children: [
             HomeAppBar(),
              SizedBox(height: 10,),

              BannerSection()
              
            ],


          ),
        ),
      ),
    );
  }
}



