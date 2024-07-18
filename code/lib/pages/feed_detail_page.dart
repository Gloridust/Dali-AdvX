import 'dart:io';
import 'package:dali_app/services/database.dart';
import 'package:flutter/cupertino.dart';
import 'package:dali_app/models/feed_record.dart';
import 'package:flutter/material.dart';
import 'package:macos_ui/macos_ui.dart';

class FeedRecordDetailPage extends StatefulWidget {
  final String recordId;

  const FeedRecordDetailPage({Key? key, required this.recordId})
      : super(key: key);

  @override
  _FeedRecordDetailPageState createState() => _FeedRecordDetailPageState();
}

class _FeedRecordDetailPageState extends State<FeedRecordDetailPage> {
  late Future<FeedRecord> _recordFuture;
  late Future<Map<String, dynamic>> _orderDataFuture;

  @override
  void initState() {
    super.initState();
    _recordFuture = _loadFeedRecord();
    _orderDataFuture = _loadOrderData();
  }

  Future<FeedRecord> _loadFeedRecord() async {
    final db = await AppDatabase().database;
    final List<Map<String, dynamic>> maps = await db.query(
      'records',
      where: 'id = ?',
      whereArgs: [widget.recordId],
    );

    if (maps.isNotEmpty) {
      return FeedRecord.fromJson(maps.first);
    } else {
      throw Exception('Record not found');
    }
  }

  Future<Map<String, dynamic>> _loadOrderData() async {
    final feedRecord = await _recordFuture;
    final db = await AppDatabase().database;
    final List<Map<String, dynamic>> maps = await db.query(
      'orders',
      where: 'id = ?',
      whereArgs: [feedRecord.databaseId],
    );

    if (maps.isNotEmpty) {
      return maps.first;
    } else {
      throw Exception('Order data not found');
    }
  }
[Desensitization, reference only]