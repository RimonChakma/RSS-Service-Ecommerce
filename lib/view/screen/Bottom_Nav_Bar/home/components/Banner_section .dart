import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class BannerSection extends StatefulWidget {
  const BannerSection({super.key});

  @override
  State<BannerSection> createState() => _BannerSectionState();
}

class _BannerSectionState extends State<BannerSection> {
   int currentIndex = 0;
  @override
  Widget build(BuildContext context) {

      List<String> bannerList=[
      "https://img.freepik.com/free-vector/flat-sale-banner-with-photo_23-2149026968.jpg",
      "https://img.freepik.com/premium-psd/online-shopping-sale-icon-with-cart-bag-percentage-tag-dark-background-3d-render-concept-buy_492780-3252.jpg?semt=ais_hybrid",
      "https://img.freepik.com/premium-psd/online-shopping-landing-page-website-concept-with-3d-mobile-phone-parcel-trolley-cart_598466-172.jpg"
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRgAoYE__Cs375IeBRa3WO9TqHiZ_vNspw0gA&s",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRn6tFdy8rNuPLySXVv1YP-vPjbGao2IEYrHn-_nqR2xqYWlVG1ErBbpXYTn1IbvVgmls4&usqp=CAU",
      "https://img.pikbest.com/wp/202346/conceptual-illustration-of-e-commerce-shopping-on-website-or-mobile-app-in-3d-render_9623895.jpg!bw700",
      "https://png.pngtree.com/background/20231030/original/pngtree-3d-rendering-of-an-ecommerce-app-in-illustration-style-picture-image_5807880.jpg",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSGVSy4nsXZlnrin-sSIBkKLRPXY11K5VddbvgAnZ6CioWzr20lDewv_Ts21Mf7HKONdyc&usqp=CAU"
    ];
    return   CarouselSlider(   

                         
                items: [
               ...bannerList.map((value){
                return Stack(
                  alignment: Alignment.bottomCenter,
                  
                  children:[
                    Container(                
                    decoration: BoxDecoration(                    
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.black,
                      image: DecorationImage(image: NetworkImage(value),fit: BoxFit.cover)               
                    ),
                  ),

                  Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
               ... bannerList.asMap().entries.map((value) {
                  return  Container(
                    
                    margin: EdgeInsets.symmetric(vertical: 10,horizontal: 5),
                    
                    height: 6,
                    width: 6,
                    decoration: BoxDecoration(
                      color: currentIndex == value.key? Colors.yellow:Colors.white,
                      shape: BoxShape.circle
                    ),
                  );
                },
               )
                ],
              )

                  ] 

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
                aspectRatio: 6/20,
                enlargeCenterPage: true,
                autoPlayInterval: Duration(
                  seconds: 3
                ),
                autoPlayAnimationDuration: Duration(
                  milliseconds: 900
                )
              ));
  }
}