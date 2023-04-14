import 'package:flutter/material.dart';
import 'home.dart';

void main() {
  runApp(const Drive());
}

class Drive extends StatelessWidget {
  const Drive({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
