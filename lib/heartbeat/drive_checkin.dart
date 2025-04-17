import 'package:flutter/material.dart';
import '../models/drive_entry.dart';
import '../services/drive_storage.dart';

class DriveCheckIn extends StatefulWidget {
  const DriveCheckIn({super.key});

  @override
  State<DriveCheckIn> createState() => _DriveCheckInState();
}

class _DriveCheckInState extends State<DriveCheckIn> {
  final List<Map<String, String>> drives = [
    {'label': 'Driving & Movement', 'value': 'Motion'},
    {'label': 'Purpose & Motivation', 'value': 'Motive'},
    {'label': 'Digital Organization', 'value': 'Digital'},
  ];

  String _selectedDrive = 'Motion';
  final TextEditingController _noteController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Focus Check‑In')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            DropdownButtonFormField<String>(
              value: _selectedDrive,
              decoration: const InputDecoration(
                labelText: 'What are you working on today?',
              ),
              items:
                  drives.map((d) {
                    return DropdownMenuItem<String>(
                      value: d['value'],
                      child: Text(d['label']!),
                    );
                  }).toList(),
              onChanged: (v) => setState(() => _selectedDrive = v!),
            ),

            const SizedBox(height: 12),
            TextField(
              controller: _noteController,
              decoration: const InputDecoration(
                labelText: 'Reflection (optional)',
                border: OutlineInputBorder(),
              ),
              maxLines: 3,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () async {
                final entry = DriveEntry(
                  drive: _selectedDrive,
                  note: _noteController.text.trim(),
                );
                await DriveStorage.addEntry(entry);
                _noteController.clear();
                if (context.mounted) {
                  ScaffoldMessenger.of(
                    context,
                  ).showSnackBar(const SnackBar(content: Text('Saved ✓')));
                }
              },
              child: const Text('Save'),
            ),
          ],
        ),
      ),
    );
  }
}
