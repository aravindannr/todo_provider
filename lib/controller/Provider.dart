import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Provider_1 with ChangeNotifier {
  List todolist = ["work"];

  void deletetask(context, index) {
    todolist.removeAt(index);
    notifyListeners();
  }
  void addTask( String newTask){
   todolist.add(newTask);
   notifyListeners();
  }
}
