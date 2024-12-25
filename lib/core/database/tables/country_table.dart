import 'package:drift/drift.dart';
class CountryTable extends Table {
  IntColumn get id => integer().autoIncrement()();
}