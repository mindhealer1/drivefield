// File: lib/main.dart
import 'package:flutter/material.dart';
import 'core/navigator_core.dart';

void main() {
  runApp(DriveFieldApp());
}

class DriveFieldApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DriveField',
      theme: ThemeData.dark(),
      home: NavigatorCore(),
    );
  }
}
