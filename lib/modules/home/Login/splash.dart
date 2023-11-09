

import 'package:app/modules/home/Login/loginPage.dart';
import 'package:flutter/material.dart';




class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  changeScreen(){
    Future.delayed(const Duration(seconds: 1),() {
      Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPg(),));
    },);
  }
  @override
  void initState() {
  
    // TODO: implement initState
    super.initState();
      changeScreen();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/icons/app_icon.png',fit: BoxFit.fill,),
          
            // Text('POKEDEX',style: TextStyle(fontSize: 40,fontWeight: FontWeight.w600),)
           
          ],
        ),
      ),
    );
  }
}