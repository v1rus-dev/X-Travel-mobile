import 'package:drift/drift.dart';

class CityTable extends Table {
  IntColumn get id => integer().autoIncrement()();
}