import 'package:flutter/material.dart';
import 'package:ticket_app/core/bottom_nav_bar.dart';
import 'package:ticket_app/screens/all_tickets.dart';
 void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

     @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
                                                                                                                                               colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      routes: {
        "/":(context)=> const BottomNavBar(),
        "/all_tickets":(context)=> const AllTickets()
      },
    );
  }
}

