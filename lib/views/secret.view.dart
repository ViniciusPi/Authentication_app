import 'package:flutter/material.dart';

class RestrictedArea extends StatefulWidget {
  @override
  _RestrictedAreaState createState() => _RestrictedAreaState();
}

class _RestrictedAreaState extends State<RestrictedArea> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
    );
  }
}
