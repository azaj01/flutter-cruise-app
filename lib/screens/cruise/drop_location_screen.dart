import 'package:flutter/material.dart';

class DropLocationScreen extends StatefulWidget {
  const DropLocationScreen({Key? key}) : super(key: key);

  @override
  State<DropLocationScreen> createState() => _DropLocationScreenState();
}

class _DropLocationScreenState extends State<DropLocationScreen> {
  TextEditingController searchController = TextEditingController();

  List<String> searchDestination = [
    'Africa',
    'Alaska',
    'Asia and Asia Pacific',
    'Australia',
    'Bahamas',
    'Canada',
    'Caribbean',
    'Europe',
    'Goa',
    'Hawaii',
    'Kochi',
    'Lakshwadeep',
    'Mexican',
    'Mumbai',
    'Other Products'
  ];

  List<String> search = [];

  @override
  void initState() {
    super.initState();
    search.addAll(searchDestination);
  }

  void runSearchFilter(String enteredText) {
    var results = List.filled(0, '0', growable: true);
    if (enteredText.isEmpty) {
      results = searchDestination;
    } else {
      results = searchDestination
          .where((destination) =>
              destination.toLowerCase().contains(enteredText.toLowerCase()))
          .toList();
    }
    setState(() {
      search = results;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: const Icon(
            Icons.arrow_back,
          ),
          //color: Colors.black,
        ),
        title: TextField(
          onChanged: (val) {
            runSearchFilter(val);
          },
          controller: searchController,
          autofocus: true,
          style: const TextStyle(color: Colors.white),
          cursorColor: Colors.white,
          decoration: const InputDecoration(
            border: OutlineInputBorder(
                borderSide: BorderSide(width: 2, color: Colors.white)),
            hintText: 'Search Destination',
            hintStyle: TextStyle(color: Colors.white70),
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: search.length,
        itemBuilder: (context, index) => ListTile(
          leading: const Icon(Icons.location_on),
          title: Text(
            search[index],
          ),
        ),
      ),
    );
  }
}
