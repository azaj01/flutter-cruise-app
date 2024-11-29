import 'package:cruise_app/models/exclusive_deals_model.dart';
import 'package:cruise_app/screens/cruise/drop_location_screen.dart';
import 'package:cruise_app/screens/cruise/select_passengers.dart';
import 'package:cruise_app/widgets/container_widget.dart';
import 'package:cruise_app/models/cruise_info.dart';
import 'package:cruise_app/widgets/elevated_button_widget.dart';
import 'package:flutter/material.dart';

import '../../widgets/exclusive_deals_widget.dart';

class CruiseScreen extends StatefulWidget {
  const CruiseScreen({Key? key}) : super(key: key);

  @override
  State<CruiseScreen> createState() => _CruiseScreenState();
}

class _CruiseScreenState extends State<CruiseScreen> {
  int selectedMonth = 0;
  int selectedNights = 0;
  int selectedCruise = 0;

  List<String> months = [
    'Sail Months',
    'Jan 2022',
    'Feb 2022',
    'Mar 2022',
    'Apr 2022',
    'May 2022',
    'Jun 2022',
    'Jul 2022',
    'Aug 2022',
    'Sep 2022',
    'Oct 2022',
    'Nov 2022',
    'Dec 2022',
  ];

  List<String> nights = [
    "Select Cruis line",
    "Cruiseline 1",
    "Cruiseline 2",
  ];

  List<String> cruise = [
    "Select Cruis line",
    "Cordelia Cruises",
    "Norwegian Cruise Line",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 8),
              child: Center(
                child: Text(
                  'BOOK YOUR CRUISE VACATION',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
              ),
            ),
            InkWell(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const DropLocationScreen(),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 15),
                  padding: const EdgeInsets.all(5),
                  width: MediaQuery.of(context).size.width,
                  //height: MediaQuery.of(context).size.height / 14,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    // color: Colors.blueAccent,
                    border: Border.all(
                      color: Colors.blueAccent.shade100,
                      width: 2,
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'SELECT LOCATION',
                        //textAlign: TextAlign.right,
                      ),
                      Row(
                        children: const [
                          Icon(Icons.location_on),
                          Text(
                            'Drop Location',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ContainerWidget(
                    ontap: () => showMonthDialog(),
                    text: 'SELECT SAIL MONTH',
                    icon: Icons.calendar_today,
                    textSubtitle: 'Select Sail Month'),
                ContainerWidget(
                    ontap: () => showNightDialog(),
                    text: 'SELECT SAIL NIGHT',
                    icon: Icons.calendar_today,
                    textSubtitle: 'Select Sail Night'),
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ContainerWidget(
                    ontap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SelectPassengers(),
                          ),
                        ),
                    text: 'PASSENGERS',
                    icon: Icons.people_outlined,
                    textSubtitle: '2 Passengers'),
                ContainerWidget(
                    ontap: () => showCruiseDialog(),
                    text: 'CRUISE LINE',
                    icon: Icons.directions_boat_filled_outlined,
                    textSubtitle: 'Select Cruise'),
              ],
            ),
            Padding(
              // ignore: prefer_const_constructors
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: ElevatedButtonWidget(
                clickButton: () {},
                textTitleForButton: 'SEARCH CRUISE',
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                'Exclusive Deals',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Text(
                  'Recommended',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  'Trending Cruises',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  'Domestic Cruises',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(
              height: 14,
            ),
            SizedBox(
              height: 300,
              child: ListView.separated(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return ExclusiveDealsWidget(
                        deals: DealsData.exclusiveDeals[index]);
                  },
                  separatorBuilder: (context, _) => const SizedBox(width: 10),
                  itemCount: DealsData.exclusiveDeals.length),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                'Top Cruise Lines',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Text(
                    'Cordelia',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    'Norwegian',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 14,
            ),
            SizedBox(
              height: 300,
              child: ListView.separated(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return ExclusiveDealsWidget(
                        deals: DealsData.exclusiveDeals[index]);
                  },
                  separatorBuilder: (context, _) => const SizedBox(width: 10),
                  itemCount: DealsData.exclusiveDeals.length),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                'Top Cruise Lines',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Text(
                      'Indian subcontinent',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      'Asia and Asia Pacific',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      'Europe',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      'Middle East',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
              child: SizedBox(
                height: 130,
                child: Row(
                  children: [
                    AspectRatio(
                      aspectRatio: 1,
                      child: Container(
                        width: 130,
                        color: Colors.redAccent,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: const [
                          Text(
                            'Asia and Asia Pacific',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                          Text(
                            '5 Nights/ ^6 Days',
                            style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.bold,
                                fontSize: 14),
                          ),
                          Text(
                            'Asia and Asia Pacific',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 14),
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          const Text(
                            'Starting Price',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 14),
                          ),
                          const Text(
                            'Rs. 30000',
                            style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: const Text('View Details'),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: ListView(
                shrinkWrap: true,
                children: [
                  const Text(
                    'Why Book Trip with EaseMyTrip?',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),
                  ListTile(
                    leading: Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.lightBlue.shade100),
                      child: Icon(
                        Icons.directions_boat,
                        color: Colors.lightBlue.shade300,
                      ),
                    ),
                    title: const Text(
                      'Why Book Cruise with EaseMyTrip?',
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                    subtitle: const Text(
                        'Make your cruise booking with EaseMyTrip and enjoy these special features.'),
                  ),
                  ListTile(
                    leading: Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.lightBlue.shade100),
                        child: Icon(Icons.settings,
                            color: Colors.lightBlue.shade300)),
                    title: const Text(
                      'Discounted Rates',
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                    subtitle: const Text(
                        'We provide cruise vacation at dicounted rates to make your travel budget-friendly'),
                  ),
                  ListTile(
                    leading: Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.lightBlue.shade100),
                      child: Icon(
                        Icons.headset_mic,
                        color: Colors.lightBlue.shade300,
                      ),
                    ),
                    title: const Text(
                      '24x7 Support',
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                    subtitle: const Text(
                        'Book your trip with EaseMyTrip and get 24/7 assistance.'),
                  ),
                  ListTile(
                    leading: Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.lightBlue.shade100),
                        child: Icon(
                          Icons.people,
                          color: Colors.lightBlue.shade300,
                        )),
                    title: const Text(
                      'Book from Various Tour Packages',
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                    subtitle: const Text(
                        'We offet multiple Cruise packages for domestic and international destinations'),
                  )
                ],
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Card(
                child: Column(
                  children: [
                    const Text('Best Rates for Cruise Booking at EaseMyTrip',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      CruiseInfo().infoString,
                      softWrap: true,
                    ),
                    const SizedBox(height: 10),
                    Text(CruiseInfo().infoDetails, softWrap: true)
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  showNightDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context1) {
        return AlertDialog(
          content: StatefulBuilder(
            builder: (BuildContext context, StateSetter setState) {
              return Column(
                mainAxisSize: MainAxisSize.min,
                children: List<Widget>.generate(nights.length, (int index) {
                  return Row(
                    children: [
                      Expanded(child: Text(nights[index])),
                      Radio<int>(
                        value: index,
                        groupValue: selectedNights,
                        onChanged: (value) {
                          if (index != 0) {
                            setState(() => selectedNights = value!);
                            Navigator.pop(context1);
                          }
                        },
                      )
                    ],
                  );
                }),
              );
            },
          ),
        );
      },
    );
  }

  showMonthDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context1) {
        return AlertDialog(
          content: StatefulBuilder(
            builder: (BuildContext context, StateSetter setState) {
              return Column(
                mainAxisSize: MainAxisSize.min,
                children: List<Widget>.generate(months.length, (int index) {
                  return Row(
                    children: [
                      Expanded(child: Text(months[index])),
                      Radio<int>(
                        value: index,
                        groupValue: selectedMonth,
                        onChanged: (value) {
                          if (index != 0) {
                            setState(() => selectedMonth = value!);
                            Navigator.pop(context1);
                          }
                        },
                      )
                    ],
                  );
                }),
              );
            },
          ),
        );
      },
    );
  }

  showCruiseDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context1) {
        return AlertDialog(
          content: StatefulBuilder(
            builder: (BuildContext context, StateSetter setState) {
              return Column(
                mainAxisSize: MainAxisSize.min,
                children: List<Widget>.generate(cruise.length, (int index) {
                  return Row(
                    children: [
                      Expanded(child: Text(cruise[index])),
                      Radio<int>(
                        value: index,
                        groupValue: selectedCruise,
                        onChanged: (value) {
                          if (index != 0) {
                            setState(() => selectedCruise = value!);
                            Navigator.pop(context1);
                          }
                        },
                      )
                    ],
                  );
                }),
              );
            },
          ),
        );
      },
    );
  }
}
