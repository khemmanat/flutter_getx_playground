import 'package:flutter/material.dart';
import 'package:flutter_getx_playground/features/journal/journal_screen.dart';
import 'package:flutter_getx_playground/features/main/main_screen.dart';
import 'package:flutter_getx_playground/features/setting/setting_screen.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  BottomNavigationBar navigator =
      MainScreen.bottomNavigatorKey.currentWidget as BottomNavigationBar;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Test GetX',
          ),
          ElevatedButton(
            child: const Text('Journal'),
            onPressed: () {
              // Get.to(JournalScreen());
              navigator.onTap!(1);
            },
          ),
          ElevatedButton(
            child: const Text('Setting'),
            onPressed: () {
              // Get.to(SettingScreen());
              navigator.onTap!(2);
            },
          ),
        ],
      ),
    );
  }
}
