import "package:flutter/material.dart";
import "package:collegeapp/pages/loginpage.dart";
import 'package:firebase_core/firebase_core.dart';
import "package:collegeapp/firebase_options.dart";

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const Myapp());

}

class Myapp extends StatelessWidget {
  const Myapp({super.key});
 @override
  Widget build(BuildContext context)
  {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Loginpage(),
    );
  }
  
}