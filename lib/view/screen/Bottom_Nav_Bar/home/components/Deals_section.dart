 
 
import 'package:flutter/material.dart';
import 'package:rss_service_ecommerce/view/screen/Bottom_Nav_Bar/home/components/Home_title.dart';

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
                        color: Colors.blue,
                        fontSize: 14
                      ),),
                      Text("min.spend ৳ 399",style: TextStyle(
                        color: Colors.blue.withOpacity(.7),
                        fontSize: 12
                      ),)
                    ],
                  ),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Rss Vouture",style: TextStyle(
                        color: Colors.blue,
                        fontSize: 14,
                        

                      ),),
                      Text("1-11-2024 to 2-11-2024",
                      maxLines: 1,
                      style: TextStyle(color: Colors.blue.withOpacity(.7),fontSize: 12),)
                    ],
                  ),
                 GestureDetector(child: Text("Collect all"),)
                ],
               ),
             ),
             
            ),
          ),
      
        ],
      ),
    );
  }
}

