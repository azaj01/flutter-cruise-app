// ignore_for_file: empty_statements

import 'package:cruise_app/contact_us_form.dart';
import 'package:cruise_app/models/exclusive_deals_model.dart';
import 'package:flutter/material.dart';

class CruiseDetailsScreen extends StatefulWidget {
  final ExclusiveDeals deals;

  const CruiseDetailsScreen({Key? key, required this.deals}) : super(key: key);

  @override
  State<CruiseDetailsScreen> createState() =>
      _CruiseDetailsScreenState(deals: deals);
}

class _CruiseDetailsScreenState extends State<CruiseDetailsScreen> {
  var dropDownmenu = 'Item 1';
  final ExclusiveDeals deals;
  _CruiseDetailsScreenState({required this.deals});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        title: const Text(
          '2A,0C | Interior',
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.filter, color: Colors.black),
          ),
        ],
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Column(
        children: [
          const Text('1 Cruise Available'),
          Card(
            child: Expanded(
              child: Column(children: [
                ListTile(
                  leading: SizedBox(
                    width: 50.0,
                    child: Image.asset(
                      deals.imageUrl,
                    ),
                  ),
                  title: Padding(
                    padding: const EdgeInsets.all(8),
                    child: Text(deals.title.toString()),
                  ),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            padding: const EdgeInsets.all(4),
                            // color: Colors.lightBlue.shade100,
                            //
                            decoration: BoxDecoration(
                              color: Colors.lightBlue.shade100,
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(7)),
                            ),
                            child: Row(
                              children: const [
                                Icon(Icons.nightlight),
                                Text(' 2 Nights ')
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          const Text(
                            'See Itinerary',
                            style: TextStyle(
                                decorationStyle: TextDecorationStyle.dashed),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Row(
                            children: const [
                              Icon(
                                Icons.star,
                                color: Colors.yellow,
                              ),
                              Text('4.5')
                            ],
                          ),
                        ],
                      ),
                      const Divider(),
                      Row(
                        children: const [
                          Icon(Icons.directions_boat, color: Colors.blue),
                          SizedBox(
                            width: 7,
                          ),
                          Text('Departing from:'),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Mumbai',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      const SizedBox(height: 5),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 30,
                        decoration: BoxDecoration(
                          color: Colors.lightBlue.shade100,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(7)),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            const Icon(
                              Icons.calendar_view_month_sharp,
                              color: Colors.black54,
                            ),
                            DropdownButton<String>(
                              value: dropDownmenu,
                              icon: const Icon(Icons.keyboard_arrow_down),
                              onChanged: (String? newValue) {
                                setState(() {
                                  dropDownmenu = newValue!;
                                });
                              },
                              items: <String>[
                                'Item 1',
                                'Item 2',
                                'item 3'
                              ].map<DropdownMenuItem<String>>((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                            ),
                            // const Icon(Icons.keyboard_arrow_down)
                          ],
                        ),
                      ),
                      const Divider(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            children: [
                              const Text('Starting Price'),
                              Text(
                                'Rs.' + deals.price.toString(),
                                style: const TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.transparent,
                              shape: const RoundedRectangleBorder(
                                side: BorderSide(color: Colors.red, width: 2),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(5),
                                ),
                              ),
                              elevation: 0,
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const ContactUsForm(),
                                ),
                              );
                            },
                            child: const Text(
                              'Send Query',
                              style: TextStyle(color: Colors.red),
                            ),
                          ),
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Colors.red,
                              ),
                              onPressed: () {},
                              child: const Text('View Details'))
                        ],
                      ),
                      Container(
                        color: Colors.grey,
                        width: double
                            .infinity, //MediaQuery.of(context).size.width,
                        //height: 40,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: const [
                            Padding(
                              padding: EdgeInsets.all(10),
                              child: Text(
                                'Expand',
                                textAlign: TextAlign.end,
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w600),
                              ),
                            ),
                            Icon(Icons.keyboard_arrow_down)
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ]),
            ),
          ),
        ],
      ),
    );
  }
}