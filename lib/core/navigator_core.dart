// lib/core/navigator_core.dart
import 'package:flutter/material.dart';

class NavigatorCore extends StatelessWidget {
  const NavigatorCore({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('DriveField Home')),
      body: Center(child: Text('Welcome to DriveField 🚗')),
    );
  }
}
