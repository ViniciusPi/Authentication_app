import 'package:authenticator_local/home_page.dart';
import 'package:flutter/material.dart';

main(List<String> args) {
  runApp(AuthMain());
}

class AuthMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
