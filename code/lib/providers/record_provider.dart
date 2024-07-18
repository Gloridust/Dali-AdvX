import 'package:dali_app/models/feed_record.dart';
import 'package:dali_app/services/database.dart';
import 'package:dali_app/services/database_handler.dart';
import 'package:flutter/foundation.dart';

class FeedRecordNotifier extends ChangeNotifier {
  final AppDatabaseHandler<FeedRecord> _dbHandler;

  List<FeedRecord> _data = [];

  FeedRecordNotifier()
      : _dbHandler = AppDatabaseHandler<FeedRecord>(
          dbName: 'records',
          queryColumns: ['id', 'createDate', 'additionalText', 'mediaUrls'],
          fromJson: FeedRecord.fromJson,
        ),
        super();

  List<FeedRecord> get records => _data;

  Future<void> loadData() async {
    _data = await _dbHandler.readAll();
    notifyListeners();
  }

  Future<void> add(dynamic data) async {
    if (data is FeedRecord) {
      await _dbHandler.create(data);
    } else if (data is List<FeedRecord>) {
      for (var bookmark in data) {
        await _dbHandler.create(bookmark);
      }
    }

    loadData();
  }

  Future<void> delete(String id) async {
    await _dbHandler.delete(id);
    final db = await AppDatabase().database;
    await db.rawQuery(
        'DELETE FROM orders WHERE id =?', [id]); // Deleted related data
    loadData();
  }

  Future<void> clear() async {
    await _dbHandler.deleteAll();
    loadData();
  }
}
