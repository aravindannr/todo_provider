import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Provider_1 with ChangeNotifier {
  List todolist = ["work"];
  TextEditingController _controller = TextEditingController();

  void deletetask(context, index) {
    todolist.removeAt(index);
    notifyListeners();
  }
  void addTask(){
   todolist.add(_controller.text);
   _controller.clear();
   notifyListeners();
  }
}
