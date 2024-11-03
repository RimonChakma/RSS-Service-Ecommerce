
import 'package:flutter/material.dart';
import 'package:rss_service_ecommerce/view/screen/Bottom_Nav_Bar/home/components/Banner_section%20.dart';
import 'package:rss_service_ecommerce/view/screen/Bottom_Nav_Bar/home/components/Home_app_bar.dart';
import 'package:rss_service_ecommerce/view/screen/Bottom_Nav_Bar/home/components/Home_title.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

 

  @override
  Widget build(BuildContext context) {
    return 
    Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: SafeArea(
          child: Column(
            children: [

             HomeAppBar(),
              SizedBox(height: 10,),
              BannerSection(),
              DealsSection()  

            ],
          ),
        ),
      ),
    );
  }
}

class DealsSection extends StatelessWidget {
  const DealsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        
        children: [
          HomeTitle(title: "New Deals Everyday's",),
          Align(
            alignment: Alignment.centerLeft,
            child:
             Container(
             decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.circular(20)
             ),
             child: Padding(
               padding: const EdgeInsets.all(10),
               child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("7%of",style: TextStyle(
                        color: Colors.blue
                      ),),
                      Text("min.spend ৳ 399",style: TextStyle(
                        color: Colors.blue.withOpacity(.7)
                      ),)
                    ],
                  ),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Rss Vouture",style: TextStyle(
                        color: Colors.blue,

                      ),),
                      Text("1-11-2024 to 2-11-2024",style: TextStyle(color: Colors.blue.withOpacity(.7),),)
                    ],
                  ),
                 GestureDetector(child: Text("Collect all"),)
                ],
               ),
             ),
             
            ),
          ),
      
         HomeTitle(title: "Beast Deals",),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              height: 100,
              width: 200,
              color: Colors.red,
            ),
          )
        ],
      ),
    );
  }
}



