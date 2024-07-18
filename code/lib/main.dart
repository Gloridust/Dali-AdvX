import 'dart:io';

import 'package:dali_app/pages/home_page.dart';
import 'package:dali_app/provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hotkey_manager/hotkey_manager.dart';
import 'package:macos_window_utils/macos_window_utils.dart';
import 'package:macos_window_utils/window_manipulator.dart';
import 'package:window_manager/window_manager.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  if (Platform.isMacOS) {
    await WindowManipulator.initialize();
    await windowManager.ensureInitialized();
    await hotKeyManager.unregisterAll();
  }

  runApp(ProviderScope(overrides: [
    // persistenceProvider.overrideWithValue(persistenceService),
  ], child: DaliApp()));
}

class DaliApp extends ConsumerStatefulWidget {
  const DaliApp({super.key});

  @override
  ConsumerState<DaliApp> createState() => _DaliAppState();
}

class _DaliAppState extends ConsumerState<DaliApp> {
  bool _initialized = false;

  void initializeSharedText() {}
  @override
  void dispose() {
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    initializeSharedText();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (!_initialized) {
      initializeAsyncTasks();
      _initialized = true;
    }
  }

  void initializeAsyncTasks() async {
    ref.read(recordProvider).loadData();
    if (Platform.isMacOS) {
      WindowManipulator.enableFullSizeContentView();
      WindowManipulator.addToolbar();
      WindowManipulator.makeTitlebarTransparent();
      WindowManipulator.setToolbarStyle(
          toolbarStyle: NSWindowToolbarStyle.unified);

      WindowManipulator.hideTitle();
    }
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      // locale: TranslationProvider.of(context).flutterLocale,
      title: 'AI Assistant App',
      debugShowCheckedModeBanner: false,
      theme: CupertinoThemeData(
        primaryColor: CupertinoColors.activeBlue,
      ),
      home: const HomePage(),
    );
  }
}
