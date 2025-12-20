import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:taskati/screens/login_screen.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    nextScreen();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.asset("assets/image/splash.json"),
            SizedBox(height: 25),
            Text("Taskati", style: TextStyle(color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold,),),
            SizedBox(height: 20),
            Text("It is Time to Get Organized", style: TextStyle(color: Colors.grey, fontSize: 20,),),
          ],
        ),
      ),
    );
  }

  void nextScreen() {
    Future.delayed(const Duration(seconds: 7), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const LoginScreen()),
      );
    });
  }
}
