import 'package:get/get.dart';

class DataController extends GetxController{
  final _data = Rx<List<String>>([]);
  final _selected = RxString('');

  set addItem(String item) {
    _data.value.add(item);
    _data.refresh();
  } 

  set select(int index) {
    _selected.value = _data.value[index];
  }

  deleteItem(int index) {
    _data.value.removeAt(index);
    _data.refresh();
  }

   Rx<List<String>> get reactiveData => _data;
   List<String> get data => _data.value;

   RxString get reactiveSelected => _selected;
   String get selected => _selected.value;

}