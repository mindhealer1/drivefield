// File: lib/main.dart
import 'package:flutter/material.dart';
import 'core/navigator_core.dart';

void main() {
  runApp(DriveFieldApp());
}

class DriveFieldApp extends StatelessWidget {
  const DriveFieldApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DriveField',
      theme: ThemeData.dark(),
      home: NavigatorCore(),
    );
  }
}

/*
---------------------------------------------------
🚀 DriveField Project Log — Initial Setup Summary
---------------------------------------------------

✅ Project Creation
- Created Flutter project: `~/development/drivefield`
- Goal: Build DriveField — a unifying space for meaningful drives

✅ Environment Setup
- Tools installed and confirmed with `flutter doctor`
- Using VS Code and Android Studio

✅ Folder Structure
- Organized `lib/` as modular foundation:
  lib/
  ├── core/             ← central systems
  ├── ui/               ← screens, widgets, themes
  ├── data/             ← storage, models
  ├── logic/            ← rules, state, flow
  ├── drivefield.dart   ← central export hub
  └── main.dart         ← app entry point

✅ First Components
- `main.dart`: launches the app with `NavigatorCore`
- `navigator_core.dart`: Scaffold with AppBar + Center text
- `drivefield.dart`: re-exports `NavigatorCore` for future modularity

✅ Why This Matters
- Establishes a clean architecture with room to grow
- Creates a simple, running app
- Anchors the DriveField vision in a tangible app experience
- Builds momentum for symbolic & functional modules to follow

This file can be referenced and updated as the project evolves.
*/
