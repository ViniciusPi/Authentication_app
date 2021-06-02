import 'package:authenticator_local/views/background.dart';
import 'package:authenticator_local/views/front.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          BackPart(),
          Container(
            color: Colors.white54.withOpacity(0.7),
          ),
          FrontPart()
        ],
      ),
    );
  }
}
