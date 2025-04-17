import 'package:hive/hive.dart';
import '../models/drive_entry.dart';

class DriveStorage {
  // Singleton-ish access to the box
  static final Box<DriveEntry> _box = Hive.box<DriveEntry>('drive_entries');

  static Future<void> addEntry(DriveEntry entry) async => _box.add(entry);

  static List<DriveEntry> all() => _box.values.toList();

  // Useful later for analytics
  static Map<String, int> driveCounts() {
    final counts = <String, int>{};
    for (final e in _box.values) {
      counts[e.drive] = (counts[e.drive] ?? 0) + 1;
    }
    return counts;
  }
}
