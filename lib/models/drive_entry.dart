import 'package:hive/hive.dart';

part 'drive_entry.g.dart'; // ← generated in 3‑B

@HiveType(typeId: 0) // 0 = first model in DriveField
class DriveEntry extends HiveObject {
  @HiveField(0)
  final String drive; // e.g. "Motion"

  @HiveField(1)
  final String note; // optional reflection

  @HiveField(2)
  final DateTime timestamp; // auto‑stamped

  DriveEntry({required this.drive, this.note = '', DateTime? timestamp})
    : timestamp = timestamp ?? DateTime.now();
}
