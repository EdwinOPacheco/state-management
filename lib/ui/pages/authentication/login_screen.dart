import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:misiontic_template/domain/use_case/controllers/auth_controller.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
  
}

class _LoginState extends State<LoginScreen>{
  
  final usuario = TextEditingController();
  final password = TextEditingController();
  late AuthController _authController;

   @override
   void initState() {
     super.initState();
      _authController = Get.find();
   }


  String usu = '';
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
                    child: Text('Red Social de Estudiantes de Arte', style: TextStyle(
                      fontSize: 20,
                    ),
                    ),
                ),
                SizedBox(height:30),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 0, horizontal: 30),
                  child: TextField(
                    controller: usuario,
                    autofocus: false,
                    decoration:  InputDecoration(
                      hintText: 'Usuario',
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
                    usu = usuario.text;
                    pass = password.text;

                    if(usu.isNotEmpty) {
                      _authController.username = usu;
                      Get.offNamed('/content');
                    }

                  },
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                          Padding(
                            padding: EdgeInsets.all(20),
                            child: Text('LOGIN', style: TextStyle(
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
                    ),                     
                  ),
                ),
                
                InkWell(
                  onTap: (){
                    Get.offNamed('/register');
                    //Navigator.pushNamed(context, '/registro');
                  },
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                          Padding(
                            padding: EdgeInsets.all(20),
                            child: Text('Registro', style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Color.fromRGBO(87, 122, 238, 1),
                            ),
                            ),                             
                        ),
                      ] 
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
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