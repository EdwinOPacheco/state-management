import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:misiontic_template/domain/use_case/controllers/data_controller.dart';




class ChatScreen extends StatelessWidget {
  final DataController _dataController = Get.find();

  ChatScreen({Key? key}) : super(key: key);
  //final DataController controller;
  //const ChatScreen({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Obx(
        () => ListView.separated(
          itemBuilder: (context, index) {
            String item = _dataController .data[index];
            return Dismissible(
              key: ValueKey('Item$index'),
              child: ListTile(
                title: Text(item),
                onTap: (){
                  _dataController .select = index;
                  Get.toNamed('/details');
                },
              ),
              onDismissed: (direction) {
                _dataController .deleteItem(index);
              },
            );
          },
          separatorBuilder: (context, index) {
            return const Divider();
          },
          itemCount: _dataController .data.length),
      ),
    );
  }
}