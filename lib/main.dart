import 'package:flutter/material.dart';
import 'package:fooddeliveryapp/constants.dart';
import 'package:fooddeliveryapp/screens/foodDetails.dart';
import 'package:fooddeliveryapp/screens/foodsList.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: primaryColor,
        iconTheme: const IconThemeData(
          color: Colors.black
        ),
        textTheme: const TextTheme(
          titleLarge: TextStyle(
            color: Colors.black
          ),
          labelSmall: TextStyle(
            color: Colors.grey,
            fontWeight: FontWeight.bold
          ),
            labelLarge: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              fontSize: 20
            ),
            labelMedium: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              fontSize: 16
            ),
            headlineLarge: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w600,
              fontSize: 25,
            )
        )
      ),
      home: const FoodsList(),
    );
  }
}
