import 'package:flutter/material.dart';
import 'package:renguko/screen/home.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  int time = 1;

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: time), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => HomeScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/Ren.jpeg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
            ),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Text('Welcome to My Renguko App',style: TextStyle(fontSize: 25),),
              )),
        ),
      ),
    );
  }
}
