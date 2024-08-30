import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:intershalla_task_app/screens/homescreen.dart';
import 'package:lottie/lottie.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  Widget build(BuildContext context) {
    /*Future.delayed(Duration(seconds: 3),()
    {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Homescreen()),
      );

    }
    );*/
    return Scaffold(
      backgroundColor: Colors.black12,
      body: AnimatedSplashScreen(
         nextScreen: Homescreen(),
        splash: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              child: Center(
                child: LottieBuilder.asset("assets/lottie/8PxvTj48cS.json",height: 400,width: 400,fit: BoxFit.cover,),
              ),
            ),
            Text("Internshala",style: TextStyle(color: Colors.white,fontSize: 50),),
          ],
        ),
        splashIconSize: 600,
        backgroundColor: Colors.black12,
      )
    );
  }
}
