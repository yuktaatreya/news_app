import 'package:flutter/material.dart';
import 'package:news_application/screens/util/app_route.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'News App',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(backgroundColor: Color(0xff5f6cd6)),
        primarySwatch: Colors.blue,
        fontFamily: "Poppins",
      ),
      onGenerateRoute: (settings)=>AppRoute.generateRoute(settings),
      initialRoute: AppRoute.homePage,
    );
  }
}
