import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:misiontic_template/domain/use_case/controllers/theme_controller.dart';

class CustomAppBar extends AppBar {
  final Widget tile;
  final BuildContext context;
  final ThemeController controller;

  // Creating a custom AppBar that extends from Appbar with super();
  CustomAppBar({
    Key? key,
    required this.controller,
    required this.context,
    required this.tile,
  }) : super(
          key: key,
          centerTitle: true,
          title: tile,
          leading: 
            ClipOval(
              child: Image.asset('images/model.jpg',
                width: 30.0,
                height: 30.0,
                fit: BoxFit.cover,
              ),
            ),
          actions: [
            IconButton(
              icon: Icon(Icons.add_alert),
              onPressed: () {}
            ),
            IconButton(
              icon: Obx(
                () => Icon(
                  controller.darkMode
                      ? Icons.light_mode_rounded
                      : Icons.dark_mode_rounded,
                ),
              ),
              onPressed: () => controller.darkMode = !controller.darkMode,
            ),
            IconButton(
              icon: Icon(Icons.logout),
              onPressed: () {
                Get.offNamed('/auth');
              }
            ),
            
          ],
        );
}
