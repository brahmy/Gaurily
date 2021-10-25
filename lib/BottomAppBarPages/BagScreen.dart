import 'package:flutter/material.dart';

class BagScreen extends StatefulWidget {
  @override
  State<BagScreen> createState() => _BagScreenState();
}

class _BagScreenState extends State<BagScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          'BagScreen',
          style: TextStyle(
            fontSize: 32,
          ),
        ),
      ),
    );
  }
}
