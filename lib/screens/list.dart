// screens/list.dart
import 'package:flutter/material.dart';

class MyList extends StatelessWidget {
  const MyList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List'),
      ),
      body: const Center(
        child: Text('This is the list screen'),
      ),
    );
  }
}
