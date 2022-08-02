import 'package:flutter/material.dart';
import 'package:flutter_getx_playground/core/app_scaffold.dart';
import 'package:flutter_getx_playground/features/home/home_screen.dart';
import 'package:flutter_getx_playground/features/journal/journal_screen.dart';
import 'package:flutter_getx_playground/features/setting/setting_screen.dart';
import 'package:flutter_getx_playground/theme/color_theme.dart';
import 'package:google_fonts/google_fonts.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);
  static final bottomNavigatorKey = GlobalKey<State<BottomNavigationBar>>();

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int index = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      body: IndexedStack(
        index: index,
        children: const [
          HomeScreen(),
          JournalScreen(),
          SettingScreen(),
        ],
      ),
      bottom: BottomNavigationBar(
          key: MainScreen.bottomNavigatorKey,
          showUnselectedLabels: true,
          type: BottomNavigationBarType.fixed,
          selectedFontSize: 14,
          unselectedFontSize: 14,
          selectedItemColor: ColorTheme.primaryBlackColor,
          selectedIconTheme:
              const IconThemeData(color: ColorTheme.primaryBlueColor),
          selectedLabelStyle: GoogleFonts.mitr(
            fontSize: 12,
            color: ColorTheme.primaryBlackColor,
          ),
          unselectedLabelStyle: GoogleFonts.mitr(
            fontSize: 12,
            color: ColorTheme.primaryBlueGrayColor,
          ),
          unselectedIconTheme:
              const IconThemeData(color: ColorTheme.primaryBlueGrayColor),
          unselectedItemColor: ColorTheme.primaryBlueGrayColor,
          items: [
            _buildBottomNavItem(title: "Home", icon: const Icon(Icons.home)),
            _buildBottomNavItem(title: "Journal", icon: const Icon(Icons.book)),
            _buildBottomNavItem(
                title: "Setting", icon: const Icon(Icons.settings)),
          ],
          currentIndex: index,
          onTap: (int index) {
            setState(() {
              this.index = index;
            });
          }),
    );
  }

  BottomNavigationBarItem _buildBottomNavItem({
    required String title,
    required Widget icon,
  }) {
    return BottomNavigationBarItem(
      icon: icon,
      label: title,
    );
  }
}
