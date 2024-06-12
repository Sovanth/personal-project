import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                AppIcon(
                  icon: Icons.home,
                  label: 'អាសុដនាគមន៍',
                  discount: true,
                  backgroundColor: Colors.orange,
                ),
                AppIcon(
                  icon: Icons.movie,
                  label: 'សម្លុតកម្ម',
                  discount: true,
                  backgroundColor: Colors.purple,
                ),
                AppIcon(
                  icon: Icons.school,
                  label: 'វិទ្យាស្ថាន',
                  discount: false,
                  backgroundColor: Colors.orangeAccent,
                ),
                AppIcon(
                  icon: Icons.directions_bus,
                  label: 'BookMeBus',
                  discount: false,
                  backgroundColor: Colors.white,
                ),
                // Add more AppIcon widgets as needed
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class AppIcon extends StatelessWidget {
  final IconData icon;
  final String label;
  final bool discount;
  final Color backgroundColor;

  AppIcon({
    required this.icon,
    required this.label,
    required this.discount,
    required this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Stack(
            children: [
              CircleAvatar(
                radius: 32.0,
                backgroundColor: backgroundColor,
                child: Icon(
                  icon,
                  size: 32.0,
                  color: Colors.white,
                ),
              ),
              if (discount)
                Positioned(
                  top: 0,
                  right: 0,
                  child: Container(
                    padding: const EdgeInsets.all(4.0),
                    decoration: BoxDecoration(
                      color: Colors.red,
                      shape: BoxShape.circle,
                    ),
                    child: Text(
                      '%',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
            ],
          ),
          SizedBox(height: 8.0),
          Text(
            label,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 14.0,
            ),
          ),
        ],
      ),
    );
  }
}
