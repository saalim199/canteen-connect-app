import 'package:flutter/material.dart';

class CanteenList extends StatefulWidget {
  const CanteenList({super.key});

  @override
  State<CanteenList> createState() => _CanteenListState();
}

class _CanteenListState extends State<CanteenList> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          padding: const EdgeInsets.only(left: 8, right: 50),
          child: const Text(
            'From where would you like to order?',
            textAlign: TextAlign.start,
            style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
          ),
        ),
        const SizedBox(height: 10), // Add some space (10 pixels
        Container(
          padding: const EdgeInsets.all(8),
          child: TextField(
            decoration: InputDecoration(
              hintText: 'Search...',
              prefixIcon: const Icon(Icons.search),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25),
              ),
            ),
          ),
        ),
        const SizedBox(height: 10),
        Expanded(
          child: ListView(
            padding: const EdgeInsets.all(8),
            children: const <Widget>[
              FoodCard(
                title: 'Green Chilli',
                subtitle: 'Cafeteria | All types of food available',
                operatingHours: '9:30 am to 8:00 pm',
                imageUrl:
                    'assets/canteen-pic.jpg', // Replace with your image path
              ),
              FoodCard(
                title: 'Amul Cafe',
                subtitle: 'Cafeteria | All types of food available',
                operatingHours: '9:30 am to 8:00 pm',
                imageUrl:
                    'assets/canteen-pic.jpg', // Replace with your image path
              ),
              FoodCard(
                title: 'Big Treat Canteen',
                subtitle: 'Cafeteria | All types of food available',
                operatingHours: '9:30 am to 8:00 pm',
                imageUrl:
                    'assets/canteen-pic.jpg', // Replace with your image path
              ),
              FoodCard(
                title: 'ABC',
                subtitle: 'Cafeteria | All types of food available',
                operatingHours: '9:30 am to 8:00 pm',
                imageUrl:
                    'assets/canteen-pic.jpg', // Replace with your image path
              ),
              FoodCard(
                title: 'Green Chilli',
                subtitle: 'Cafeteria | All types of food available',
                operatingHours: '9:30 am to 8:00 pm',
                imageUrl:
                    'assets/canteen-pic.jpg', // Replace with your image path
              ),
              // Add more FoodCard widgets here
            ],
          ),
        )
      ],
    );
  }
}

class FoodCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final String operatingHours;
  final String imageUrl;

  const FoodCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.operatingHours,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print('$title pressed');
      },
      child: Card(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(6.0),
              child: ClipRRect(
                borderRadius:
                    BorderRadius.circular(15.0), // Set the radius as needed
                child: Image.asset(
                  imageUrl,
                  fit: BoxFit.fill,
                  width: 150,
                  height: 100, // You can adjust this as needed
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      title,
                      style: const TextStyle(fontSize: 20),
                    ),
                    Text(
                      '$subtitle |\n $operatingHours',
                      style: const TextStyle(fontSize: 15),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
