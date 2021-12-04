import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:misiontic_template/domain/use_case/controllers/auth_controller.dart';
import 'package:misiontic_template/domain/use_case/controllers/data_controller.dart';
import 'package:misiontic_template/domain/use_case/controllers/theme_controller.dart';
import 'package:misiontic_template/domain/use_case/controllers/ui_controller.dart';
import 'package:misiontic_template/ui/pages/content/screens/chat_screen.dart';
import 'package:misiontic_template/ui/pages/content/screens/post_screen.dart';
import 'package:misiontic_template/ui/pages/content/screens/prueba_screen.dart';
import 'package:misiontic_template/ui/pages/content/screens/widgets/item_dialog.dart';
import 'package:misiontic_template/ui/widgets/appbar.dart';

class ContentPage extends StatelessWidget {
  final ThemeController _themeController = Get.find(); 
  final AuthController _authController = Get.find();
  final UIController controller = Get.find<UIController>();
  final DataController _dataController = Get.find();

  ContentPage({Key? key}) : super(key: key);

  Widget _getScreen(int index) {
  switch (index) {
    case 1:
      return PostScreen();
    case 2:
      return ChatScreen();
    default:
        return PruebaScreen();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        controller: _themeController, 
        context: context,
        tile: Text("¡Hola ${_authController.name}!"),
      ),
      body: SafeArea(
        child: Obx(() => _getScreen(controller.reactiveScreenIndex.value)),        
      ),

      floatingActionButton: FloatingActionButton(
        child: const Icon(
          Icons.chat,
          color: Colors.white
        ),
        onPressed: (){
          Get.dialog(
            ItemDialog(
              controller: _dataController,
            ),
          );
        },
      ), 

      // Content screen navbar
      bottomNavigationBar: Obx(() => BottomNavigationBar(
        selectedItemColor: Colors.blueAccent,
        unselectedItemColor: Colors.blue[70],
        iconSize: 40,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.lightbulb_outline_rounded,              
            ),
            label: 'Prueba',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.public_outlined,
              key: Key("socialSection"),
            ),
            label: 'Post',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.chat_bubble_outline,
              key: Key("offersSection"),
            ),
            label: 'Chat',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.place_outlined,
              key: Key("locationSection"),
            ),
            label: 'Ubicación',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.group_outlined,
            ),
            label: 'Mensajes',
          ),
        ],
        currentIndex: controller.screenIndex,
        onTap: (index) {
          controller.screenIndex = index;
        },
      )),
    );
  }
  
}