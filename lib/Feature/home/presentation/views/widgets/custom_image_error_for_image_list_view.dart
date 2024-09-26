import 'package:flutter/material.dart';

class CustomImageErrorForFeatcherListView extends StatelessWidget {
  const CustomImageErrorForFeatcherListView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    Icon(Icons.broken_image, size: 50, color: Colors.grey),
    Text('Image failed to load', style: TextStyle(color: Colors.grey)),
  ],
);
  }
}