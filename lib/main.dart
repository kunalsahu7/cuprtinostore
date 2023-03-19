
import 'package:cuprtinostore/screens/bottam_view/view/bootam.dart';
import 'package:cuprtinostore/screens/cart_screen/provider/cart_provider.dart';
import 'package:cuprtinostore/screens/cart_screen/view/cart.dart';
import 'package:cuprtinostore/screens/home_screen/provider/homeprovider.dart';
import 'package:cuprtinostore/screens/home_screen/view/home_ui.dart';
import 'package:cuprtinostore/screens/serch_screen/view/serch_ui.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => HomeProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => CartScreenProvider(),
        ),
      ],
      child: CupertinoApp(
        routes: {
          '/':(p0) => BottomBar(),
          'home': (p0) => HomeScreen(),
          'search':(p0) => Searchscreen(),
          'cart':(p0) => Cartscreen(),
        },
      ),
    ),
  );
}