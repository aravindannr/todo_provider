import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:provider/provider.dart';

import '../controller/Provider.dart';
import '../widgets/create_box.dart';

class Homescreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("ToDo")),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
              context: context,
              builder: (BuildContext context) {
                return Create_box();
              });
        },
        child: Icon(Icons.add),
      ),
      body: Consumer<Provider_1>(
        builder: (
          BuildContext context,
          value,
          Widget? child,
        ) {
          return ListView.builder(
              itemCount: value.todolist.length,
              itemBuilder: (
                BuildContext context,
                int index,
              ) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Slidable(
                    endActionPane: ActionPane(
                      motion: StretchMotion(),
                      children: [
                        SlidableAction(onPressed: (context)=>value.deletetask(context, index),
                        icon: Icons.delete,
                        backgroundColor: Colors.redAccent,
                        borderRadius: BorderRadius.circular(10),)
                      ],
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.brown[100],
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: ListTile(
                          title: Text(value.todolist[index]),
                        ),
                      ),
                    ),
                  ),
                );
              });
        },
      ),
    );
  }
}
