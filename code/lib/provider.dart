import 'package:dali_app/providers/record_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final recordProvider = ChangeNotifierProvider((ref) => FeedRecordNotifier());
