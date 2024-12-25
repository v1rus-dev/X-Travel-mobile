import 'package:drift/drift.dart';
import 'package:drift_flutter/drift_flutter.dart';
import 'package:xtravel/core/database/tables/tables.dart';
import 'package:xtravel/core/database/versions.dart';

part 'app_database.g.dart';

@DriftDatabase(tables: [CityTable, CountryTable])
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_openConnection());
  @override
  int get schemaVersion => Versions.currentDatabaseVersion;

  static QueryExecutor _openConnection() {
    return driftDatabase(name: 'xtravel_database');
  }
}
