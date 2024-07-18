import 'dart:async';

import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

const _dbFileName = 'dali-dev.9.db';
const iCloudContainerId = 'iCloud.com.ygeeker.flowferry';

/// ## DB Version Log
///
class AppDatabase {
  static final AppDatabase instance = AppDatabase._init();

  static Database? _database;

  String getCloudFilePath(String version) {
    return '$version/$_dbFileName';
  }

  Future<int> get version => _database!.getVersion();
  String get dbFileName => _dbFileName;

  // Database get db => _database!;

  AppDatabase._init();

  AppDatabase();

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDB(_dbFileName);
    return _database!;
  }

  Future<Database> _initDB(String filePath) async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, filePath);

    return await openDatabase(path,
        version: 1,
        onCreate: _createDB,
        onUpgrade: _upgradeDB,
        onDowngrade: _downgradeDB);
  }

  Future<void> _downgradeDB(Database db, int oldVersion, int newVersion) async {
    print("Excute Downgrade");
  }

  Future<void> _upgradeDB(Database db, int oldVersion, int newVersion) async {
    print("Excute Upgrade");
    // Implement other version upgrades with additional if statements here.
  }

  Future<void> wipeData() async {
    await _database!.delete('articles');
  }

  Future _createDB(Database db, int version) async {
    const idType = 'TEXT PRIMARY KEY';
    const textType = 'TEXT';
    const integerType = 'INTEGER';
    const realType = 'REAL';
    const booleanType = 'INTEGER';
    const jsonType = 'TEXT'; // For storing JSON as text

   
  }

  Future<String> getDatabasePath() async {
    final dbPath = await getDatabasesPath();
    return join(dbPath, _dbFileName);
  }
}
