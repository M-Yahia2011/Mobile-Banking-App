import 'package:flutter/material.dart';
import 'package:qnb/screens/home_screen.dart';

import 'screens/auth_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'QNB',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: Color(0xff7b104a), 
          textTheme: TextTheme(
              headline3: TextStyle(fontSize: 50, color: Colors.white),
              bodyText2: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold))),
      home: AuthScreen(),
      routes: {
        AuthScreen.routeName: (ctx) => AuthScreen(),
        HomeScreen.routeName: (ctx) => HomeScreen(),
      },
    );
  }
}
