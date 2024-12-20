import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
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
              );

              
  }
}

