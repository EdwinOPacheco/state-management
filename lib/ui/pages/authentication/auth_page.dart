import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:misiontic_template/ui/pages/authentication/login_screen.dart';

class AuthPage extends StatelessWidget {  
  const AuthPage ({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('images/fondoApp.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: const Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: LoginScreen(),)
      ),
    );    
  }
}