import 'package:flutter/material.dart';
import 'package:flutter_getx_playground/features/home/home_screen.dart';
import 'package:flutter_getx_playground/features/journal/journal_screen.dart';
import 'package:flutter_getx_playground/features/main/main_screen.dart';
import 'package:flutter_getx_playground/features/setting/setting_screen.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter GetX Playground',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MainScreen(),
    );
  }
}
