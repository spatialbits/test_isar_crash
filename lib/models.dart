//@dart=2.12
import 'package:isar/isar.dart';

part 'models.g.dart';

@Collection()
class Line {
  int id = Isar.autoIncrement; // auto increment id

  late int start;

  late int? stop;

  @Index(type: IndexType.hash) // Search index
  late String tripUuid;
}

@Collection()
class Point {
  int id = Isar.autoIncrement;

  late bool foreground;

  @Index()
  late int timestamp;

  late double latitude;
  late double longtidue;
  late double accuracy;
  late double speed;
  late double heading;
  late double altitude;
}
