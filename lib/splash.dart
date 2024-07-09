import 'package:ecp/login.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(SplashScreen());
}
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Home Screen'),
      ),
    );
  }
}
class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigateToHome();
  }

  _navigateToHome() async {
    await Future.delayed(Duration(seconds: 3)); // wait for 3 seconds
    Navigator.pushReplacement(context,
        MaterialPageRoute(
            builder: (context)=>login()));
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset('assets/images/logo1.jpg',),
 // your splash screen logo
    );
  }
}