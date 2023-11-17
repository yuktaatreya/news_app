import 'package:flutter/material.dart';
import 'package:news_application/screens/home_page/ui/pages/home_page.dart';

class AppRoute {
  static const homePage="/home_page";
  static const newsDetailsPage="/news_details_page";

  static Route<dynamic> generateRoute (RouteSettings settings){
    switch(settings.name){
      case "/home_page":
        return MaterialPageRoute(builder: (context)=>const HomePage());
      default:
        return MaterialPageRoute(builder: (context)=>const HomePage());
    }
  }
}