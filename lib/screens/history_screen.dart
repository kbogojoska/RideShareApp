import 'package:flutter/material.dart';
import 'package:ride_share/screens/routes_drivers_screen.dart';
import 'package:ride_share/widgets/route_card_history.dart';
import '../models/route_model.dart';

class HistoryScreen extends StatelessWidget {
  final List<RouteModel> historyRoutes = [
    RouteModel(
      from: "City1",
      to: "City2",
      date: "22/01/2024",
      time: "11:00",
      role: "Passenger",
      recommend: "Yes",
    ),
    RouteModel(
      from: "City3",
      to: "City4",
      date: "23/01/2024",
      time: "15:00",
      role: "Driver",
      recommend: "No",
    ),
    RouteModel(
      from: "City3",
      to: "City4",
      date: "25/01/2024",
      time: "18:00",
      role: "Passenger",
      recommend: "Yes",
    ),
    RouteModel(
      from: "City1",
      to: "City3",
      date: "30/01/2024",
      time: "20:00",
      role: "Driver",
      recommend: "Yes",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'History of finished routes',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        backgroundColor: Colors.blue[900],
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white,),
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => RoutesDriversScreen()),
            );
          },
        ),
      ),
      body: ListView.builder(
        itemCount: historyRoutes.length,
        itemBuilder: (context, index) {
          return RouteHistoryCard(route: historyRoutes[index]);
        },
      ),
    );
  }
}