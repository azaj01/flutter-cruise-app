import 'package:flutter/material.dart';

import 'package:cruise_app/screens/bus.dart';
import 'package:cruise_app/screens/car.dart';
import 'package:cruise_app/screens/cruise/cruise.dart';
import 'package:cruise_app/screens/house.dart';
import 'package:cruise_app/screens/train.dart';

import 'screens/flight.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: DefaultTabController(
      length: 6,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Ease My Trip'),
          centerTitle: true,
          bottom: const TabBar(
            isScrollable: true,
            tabs: [
              Tab(
                icon: Icon(Icons.flight),
                text: 'Flight',
              ),
              Tab(
                icon: Icon(Icons.house),
                text: 'Hotels',
              ),
              Tab(
                icon: Icon(Icons.directions_bus),
                text: 'Bus',
              ),
              Tab(
                icon: Icon(Icons.directions_car),
                text: 'Car',
              ),
              Tab(
                icon: Icon(Icons.directions_boat),
                text: 'Cruise',
              ),
              Tab(
                icon: Icon(Icons.train),
                text: 'Train',
              ),
            ],
          ),
        ),
        body:const TabBarView(
          children:  [
            Flight(),
            House(),
            Bus(),
            Car(),
            CruiseScreen(),
            Train(),
          ],
        ),
        //children: [Flight(), House(), Bus(), Car(), Boat(), Train()],
      ),
    ));
  }
}
