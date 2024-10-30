import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {

    List<String> bannerList=[
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR1GVUcQwkfU17x-iOhsR5e6mkIQKxUGjzMQA&s",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSZKvNdCu_bfstFw5nxOD_5EDrbJ8x5A64Erw&s",
      "https://img.freepik.com/premium-vector/e-commerce-shopping-website-banner-design-template_556845-302.jpg?semt=ais_hybrid"
    ];
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: SafeArea(
          child: Column(
            children: [
              Row(
                children: [
                  IconButton(onPressed: (){}, icon: Icon(Icons.qr_code_scanner,color: Colors.black,)),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.orange,width: 2),
                        borderRadius: BorderRadius.circular(10)
                      ),
                    
                    
                      child: Row(
                        children: [                     
                          Expanded(child: TextField(                        
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderSide: BorderSide.none
                              ),
                            
                              prefixIcon: Icon(Icons.camera_alt_outlined),
                              hintText: "Search Now",
                              hintStyle: TextStyle(
                                color: Colors.black.withOpacity(.4)
                              ),
                              suffixIcon: Icon(Icons.search),                           
                            ),                       
                          )),                        
                        ],
                      ),
                    ),                   
                  ),
                  
                  IconButton(onPressed: (){}, icon: Icon(Icons.notifications))
                ],
              ),
              SizedBox(height: 10,),


              CarouselSlider(   

                         
                items: [
               ...bannerList.map((value){
                return Container(                
                  decoration: BoxDecoration(                    
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.black,
                    image: DecorationImage(image: NetworkImage(value),fit: BoxFit.cover)               
                  ),
                );
               })
              ], options: CarouselOptions(

                onPageChanged: (index, reason) {
                  
                  setState(() {
                    currentIndex = index;
                  });
                },
                height: 160,
                autoPlay: true,
                aspectRatio: 3/4,
                enlargeCenterPage: true,
                autoPlayInterval: Duration(
                  seconds: 3
                ),
                autoPlayAnimationDuration: Duration(
                  milliseconds: 900
                )
              )),


              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
               ... bannerList.asMap().entries.map((value) {
                  return  Container(
                    margin: EdgeInsets.symmetric(vertical: 10,horizontal: 5),
                    
                    height: 10,
                    width: 10,
                    decoration: BoxDecoration(
                      color: currentIndex == value.key? Colors.yellow:Colors.blue,
                      shape: BoxShape.circle
                    ),
                  );
                },
               )
                ],
              )
            ],


          ),
        ),
      ),
    );
  }
}