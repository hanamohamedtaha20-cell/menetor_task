import 'package:flutter/material.dart';
import '../screens/welcome_screen.dart';
class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState(){
    Future.delayed(const Duration(seconds: 3),(){
      Navigator.push(context, MaterialPageRoute(builder: (context)=>WelcomeScreen()),);
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: SizedBox(
          width: 400,
          height: 400,
          child: Image.asset("images/nat_cube_logo.jpg"))),
    );
  }
}