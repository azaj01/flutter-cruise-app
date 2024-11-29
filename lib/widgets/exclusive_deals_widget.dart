import 'package:cruise_app/models/exclusive_deals_model.dart';
import 'package:cruise_app/screens/cruise/cruise_details_screen.dart';
import 'package:flutter/material.dart';

class ExclusiveDealsWidget extends StatelessWidget {
  final ExclusiveDeals deals;

  const ExclusiveDealsWidget({Key? key, required this.deals}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.grey[200], borderRadius: BorderRadius.circular(15)),
      width: 250,
      //height: 300,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Image.network(
                deals.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              deals.title,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              deals.duration,
              style: const TextStyle(color: Colors.blue),
            ),
            const SizedBox(
              height: 5,
            ),
            const Text(
              'Starting Price',
              style: TextStyle(fontSize: 15),
            ),
            Row(
              children: [
                Text(
                  '\$' + deals.price.toString(),
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 18),
                ),
                const SizedBox(
                  width: 70,
                ),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              CruiseDetailsScreen(deals: deals),
                        ),
                      );
                    },
                    child: const Text('View Details')),
              ],
            ),
            const Text('Per Person'),
          ],
        ),
      ),
    );
  }
}
