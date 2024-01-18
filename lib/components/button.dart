import "package:flutter/material.dart";

class Mybutton extends StatelessWidget {
  const Mybutton({super.key,required this.onTap});
   final Function()?onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(25.0),
        margin: const EdgeInsets.symmetric(horizontal:30.0),
        decoration:   BoxDecoration(color: Colors.black,
        borderRadius: BorderRadius.circular(8),),
        
         child: const Center(child:  Text("sign in", 
         style: TextStyle(color: Colors.white ,
         fontWeight: FontWeight.bold,
         fontSize: 16 ),
         
         ),
         ),
         
      ),
    );

  }
}