import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class PruebaScreen extends StatelessWidget {
  
  const PruebaScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Prueba', style: TextStyle(
          fontSize: 60
        ),
      ),
    ); 
  }
}