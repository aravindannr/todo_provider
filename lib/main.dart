import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_provider_2/view/homescreen.dart';

import 'controller/Provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      child: MaterialApp(
        home: Homescreen(),
        theme: ThemeData(primarySwatch: Colors.brown),
        debugShowCheckedModeBanner: false,
      ), create: (BuildContext context) => Provider_1()
    );
  }
}
