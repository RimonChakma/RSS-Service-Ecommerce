
import 'package:flutter/material.dart';
import 'package:rss_service_ecommerce/view/screen/Bottom_Nav_Bar/home/components/Banner_section%20.dart';
import 'package:rss_service_ecommerce/view/screen/Bottom_Nav_Bar/home/components/Deals_section.dart';
import 'package:rss_service_ecommerce/view/screen/Bottom_Nav_Bar/home/components/Flash_sale_product.dart';
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
          child: SingleChildScrollView(
            child: Column(
              children: [
            
               HomeAppBar(),
                SizedBox(height: 10,),
                BannerSection(),
                DealsSection(),
                FlashSale(),
                FlashSale()
            
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class FlashSale extends StatelessWidget {
  const FlashSale({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              HomeTitle(title: "Flash Sale",),

              Padding(
                padding: const EdgeInsets.only(
                  top: 10
                ),
                child: Text("See ALL"),
              ),
              
            ],
          ),

          SizedBox(height: 10,),

           Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   FlashsaleproductCart(
                    ImageLink: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQiVB2C9c8eDaE5L_Cynr8YWAmFL0MCmD65_xBySdKCeQ5ryKUk__YKWd6XPzYZscaiOSQ&usqp=CAU", 
                    MainPrice: "300",
                     OldPrice: "600"
                     ),

                     FlashsaleproductCart(
                    ImageLink: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRzfESLpRDdfxxhaL1HBXr8XqcBZ9IEGZv3zA&s", 
                    MainPrice: "45,700",
                     OldPrice: "50,000"
                     ),

                     FlashsaleproductCart(
                    ImageLink: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTnDs2SltmVf4sFpHmbjsM9npeMDg73iMyS7g&s", 
                    MainPrice: "50",
                     OldPrice: "80"
                     ),
                     
                 ],
               )
         
        
        ]
    );
  }
}



  


