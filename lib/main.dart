import 'package:flutter/material.dart';
import 'package:emk/screens/history_screen.dart';
import 'package:emk/screens/login_screen.dart';
import 'package:emk/screens/profile_screen.dart';
import 'package:emk/screens/register_screen.dart';
import 'package:emk/screens/routes_drivers_screen.dart';
import 'package:emk/screens/routes_passengers_screen.dart';
import 'package:emk/screens/welcome_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Route History',
      initialRoute: '/welcome',
      routes: {
        '/welcome': (context) => WelcomeScreen(),
        '/register': (context) => RegisterScreen(),
        '/login': (context) => LoginScreen(),
        '/profile': (context) => ProfileScreen(),
        '/history': (context) => HistoryScreen(),
        '/routesDrivers': (context) => RoutesDriversScreen(),
        '/routesPassengers': (context) => RoutesPassengersScreen(),
      },
    );
  }
}
