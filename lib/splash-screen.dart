
import 'package:flutter/material.dart';
import 'package:furniture_app/login-screen.dart';
import 'package:furniture_app/screens/product/products_screen.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({Key key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState(){
    super.initState();
    Future.delayed(Duration(seconds: 3), (){
      Navigator.push(context, MaterialPageRoute(builder: (context){
        return LoginScreen();
      })
      );
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: Center(child: Image.asset('assets/images/splash.jpg')),
    );
  }
}
