import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Provider_1 with ChangeNotifier {
  List todolist = ["work"];
  final _controller = TextEditingController();
  void showAlert(context) {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              backgroundColor: Colors.brown[100],
              content: Container(
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(20)),
                height: 100,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TextField(
                      controller: _controller,
                      decoration: InputDecoration(border: OutlineInputBorder(
                      ),hintText: "Add a new task"),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        ElevatedButton(
                            onPressed: () {
                              todolist.add(_controller.text);
                              notifyListeners();
                              _controller.clear();
                              Navigator.of(context).pop();
                            },
                            child: Text("Save")),
                        SizedBox(
                          width: 10,
                        ),
                        ElevatedButton(onPressed: () {
                          Navigator.of(context).pop();
                        }, child: Text("Cancel"))
                      ],
                    )
                  ],
                ),
              ),
            ));
  }
  void deletetask(context,index){
    todolist.removeAt(index);
    notifyListeners();
  }
}
