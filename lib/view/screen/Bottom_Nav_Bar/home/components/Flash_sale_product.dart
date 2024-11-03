
import 'package:flutter/material.dart';

class FlashsaleproductCart extends StatelessWidget {

  const FlashsaleproductCart({super.key, required this.ImageLink, required this.MainPrice, required this.OldPrice, });

  final String ImageLink;
  final String MainPrice;
  final String OldPrice;
  @override
  Widget build(BuildContext context) {
    return Container(

    
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.network("$ImageLink",
            height: 100,
            width: 100,
            fit:BoxFit.cover,
            ),
          ),

          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
                
              ),
              color: const Color.fromARGB(255, 190, 81, 73),
            ),
            padding: EdgeInsets.symmetric(
              horizontal: 5,
              vertical: 1
            ),
            child: Text("75%of",style: TextStyle(
              color: Colors.white,
              fontSize: 13
            ),),
          )
          ],
        ),
        Text("$MainPrice tk",style: TextStyle(
          color: Colors.red
        ),),
        Text("$OldPrice tk",style: TextStyle(
          decoration: TextDecoration.lineThrough,
          color: Colors.grey
        ),)
      ],
    ),
  );
  }
}
