import 'package:flutter/material.dart';

import '../../cart_screen/view/cart.dart';
import '../../serch_screen/view/serch_ui.dart';
import '../view/home_ui.dart';

class HomeProvider extends ChangeNotifier
{

  List Images = [
    "assets/Images/1.jpg",
    "assets/Images/1.jpg",
    "assets/Images/1.jpg",
    "assets/Images/1.jpg",
    "assets/Images/1.jpg",
    "assets/Images/1.jpg",
    "assets/Images/1.jpg",
    "assets/Images/1.jpg",
    "assets/Images/1.jpg",
    "assets/Images/1.jpg",
    "assets/Images/1.jpg",
    "assets/Images/1.jpg",

  ];

  List Price = [
    "62,999",
    "62,999",
    "57,999",
    "62,999",
    "52,999",
    "29,999",
    "52,999",
    "11,999",
    "13,499",
    "29,999",
    "29,999",
    "29,999",
  ];

  List Name = [
    "Apple iPhone 13 (128GB) - Midnight",
    "Apple iPhone 12 (128GB) - (Product) RED",
    "Apple iPhone 12 (128GB) - (Product) RED",
    "Apple iPhone 13 (128GB) - Midnight",
    "Samsung Galaxy S22 5G",
    "Samsung Galaxy S20 FE 5G",
    "Samsung Galaxy S22 5G",
    "Samsung Galaxy S22 5G",
    "Redmi Note 11",
    "Redmi 11 Prime 5G",
    "Mi 11X Cosmic Black 6GB Storage 5G",
    "Mi 11X Cosmic Black 6GB Storage 5G",
  ];

  List? screenList = [
    HomeScreen(),
    Searchscreen(),
    Cartscreen(),
  ];

  Duration time = Duration();





}