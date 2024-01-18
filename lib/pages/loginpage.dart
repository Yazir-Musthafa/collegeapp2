import 'package:collegeapp/components/button.dart';
import 'package:collegeapp/components/square_tile.dart';
import "package:flutter/material.dart";
import 'package:collegeapp/components/textfield.dart';

class Loginpage extends StatelessWidget{
  Loginpage({super.key});

//text editing controllers
final usernamecontroller = TextEditingController();
final passwordcontroller = TextEditingController();

void signinuser(){}
 @override
 Widget build(BuildContext context)
 {
  return Scaffold(
    backgroundColor: Colors.grey[300],
    body:  SingleChildScrollView(
      child: Center(
        
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            
           //logo
           const SizedBox(height: 50,),
            
             const Image(image: AssetImage('lib/assets/logo.png'),
                       height: 140,
                       width: 120,  ),
          
          
          const SizedBox(height: 50,),
          
          
           //welcome back messsage 
           Text('Welcome back we missed you! ',
          style: TextStyle(color: Colors.grey[700],
          fontSize: 16),
          
           ),
          
          const SizedBox(height: 25,),
           //username and pass field
         Mytextfield(
          controller: usernamecontroller,
          hintText: 'UserName',
          obscureText: false,
         ),
      
         const SizedBox(height: 25,),
        Mytextfield(
          controller: passwordcontroller,
          hintText: 'Password',
          obscureText: true,
        ),
        
        const SizedBox(height: 10,),
           //forget pass
           Padding(
             padding: const EdgeInsets.symmetric(horizontal: 25.0),
             child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
               children: [
                 Text('Forgot Password?',
                 style: TextStyle(color: Colors.grey[600]),),
               ],
             ),
           ),
            const SizedBox(height:15.0),
           
          
          
          //button
           Mybutton( onTap: signinuser,),
      
           const SizedBox(height: 50,),
           //continue with
           Padding(
             padding: const EdgeInsets.symmetric(horizontal: 25.0),
             child: Row(
                     
              children: [
                Expanded(child:   Divider(thickness: 0.5,
                     color: Colors.grey[400],),),
             Padding(
               padding: const EdgeInsets.symmetric(horizontal: 25.0),
               child: Text("Or Continue with",
               style: TextStyle(color: Colors.grey[700]),),
             ),
             Expanded(child:   Divider(thickness: 0.5,
                     color: Colors.grey[400],),)
              ],
             ),
           ),
             const SizedBox(height: 10,),
           //other sign in 
               const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Squaretile(path: 'lib/assets/google.png',),
                   SizedBox(width: 20,),
                     Squaretile(path: 'lib/assets/facebook.png',),
                  ],
                ),
              const  SizedBox(height:20),
               Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Dont have an account",style: TextStyle(color: Colors.grey[700])),
                 const SizedBox(width: 5,),
                 const Text("Register Now",style: TextStyle(color: Colors.blue,
                 fontWeight: FontWeight.bold),
                 ),
                ],
              )
          
           //not remember sign up
            ],
          ),
        ),
      ),
    ),
  );

 }

}