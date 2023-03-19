import 'package:flutter/cupertino.dart';

import '../../home_screen/provider/homeprovider.dart';
import '../../home_screen/view/home_ui.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CupertinoTabScaffold(
        controller: CupertinoTabController(
          initialIndex: 0,
        ),
        tabBuilder: (context, index) => CupertinoTabView(
          builder: (context) {
            return Center(
              child: HomeScreen(),
            );
          },
        ),
        tabBar: CupertinoTabBar(
          backgroundColor: CupertinoColors.white,
          items: [
            BottomNavigationBarItem(icon: Icon(CupertinoIcons.home)),
            BottomNavigationBarItem(icon: Icon(CupertinoIcons.search)),
            BottomNavigationBarItem(icon: Icon(CupertinoIcons.shopping_cart)),
          ],
        ),
      ),
    );
  }
}