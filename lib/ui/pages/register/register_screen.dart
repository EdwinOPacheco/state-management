import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  _RegisterScreen createState() => _RegisterScreen();
}


class _RegisterScreen extends State<RegisterScreen> {
  final nombre = TextEditingController();
  final correo = TextEditingController();
  final password = TextEditingController();

  String name = '';
  String email = '';
  String pass = '';

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SizedBox(height:50),
        Row (
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('images/logo.png', width: 80,),
          ],
        ),
        SizedBox(height:20),
        Padding(
          padding: EdgeInsets.all(30),
          child: Container (
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [BoxShadow (
                color: Colors.grey,
                blurRadius: 10,
                offset: Offset (0,5),
                ),
              ], 
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  child: Text('Artwork Sweet', style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    color: Color.fromRGBO(81, 171, 216, 1),
                    
                  ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(5),
                    child: Text('Registrate para ser parte del arte del mundo', style: TextStyle(
                      fontSize: 15,
                    ),
                    ),
                ),
                SizedBox(height:30),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 0, horizontal: 30),
                  child: TextField(
                    controller: nombre,
                    autofocus: false,
                    decoration:  InputDecoration(
                      hintText: 'Nombre',
                      prefixIcon: Icon(Icons.person), 
                      contentPadding: EdgeInsets.all(10),
                      hintStyle: TextStyle(
                        color: Colors.grey,
                        fontSize: 18                           
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey,
                          width: 2
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height:40),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 0, horizontal: 30),
                  child: TextField(
                    controller: correo,
                    autofocus: false,
                    decoration:  InputDecoration(
                      hintText: 'Correo',
                      prefixIcon: Icon(Icons.email), 
                      contentPadding: EdgeInsets.all(10),
                      hintStyle: TextStyle(
                        color: Colors.grey,
                        fontSize: 18                           
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey,
                          width: 2
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height:40),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 0, horizontal: 30),
                  child: TextField(
                    controller: password,
                    autofocus: false,
                    decoration:  InputDecoration(
                      hintText: 'Contraseña',
                      prefixIcon: Icon(Icons.security), 
                      contentPadding: EdgeInsets.all(10),
                      hintStyle: TextStyle(
                        color: Colors.grey,
                        fontSize: 18                           
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey,
                          width: 2
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height:60),
                InkWell(
                  onTap: (){
                    name = nombre.text;
                    email = correo.text;
                    pass = password.text;

                    if(name.isNotEmpty & email.isNotEmpty & pass.isNotEmpty) {
                      Get.offNamed('/auth');
                    }
                  },
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                          Padding(
                            padding: EdgeInsets.all(20),
                            child: Text('ENVIAR', style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Colors.white,
                            ),
                            ),                             
                        ),
                      ] 
                    ),
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(87, 122, 238, 1),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                      ),                          
                    ),                     
                  ),
                ),                  
              ],
            ),
          ),
        ),
      ],
    );        
      
        
  }
}