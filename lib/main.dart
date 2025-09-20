import 'package:flutter/material.dart';
import 'package:menetor_task/splash/splash_view.dart';

main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:SplashView() ,
    );
  }
}//
