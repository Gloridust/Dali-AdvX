import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:dali_app/pages/account_tab.dart';
import 'package:dali_app/pages/ask_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hotkey_manager/hotkey_manager.dart';
import 'package:photo_manager/photo_manager.dart';
import 'package:uni_links/uni_links.dart';
import 'package:window_manager/window_manager.dart';
import 'feed_screen.dart';

  Widget _buildSearchBar() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Container(
        height: 28,
        decoration: BoxDecoration(
          color: CupertinoColors.systemGrey5.resolveFrom(context),
          borderRadius: BorderRadius.circular(6),
        ),
        child: Row(
          children: [
            const SizedBox(width: 8),
            Icon(
              CupertinoIcons.search,
              size: 14,
              color: CupertinoColors.systemGrey.resolveFrom(context),
            ),
            const SizedBox(width: 6),
            Expanded(
              child: CupertinoTextField(
                placeholder: 'Search',
                placeholderStyle: TextStyle(
                  color: CupertinoColors.systemGrey.resolveFrom(context),
                  fontSize: 13,
                ),
                style: TextStyle(
                  color: CupertinoColors.label.resolveFrom(context),
                  fontSize: 13,
                ),
                decoration: BoxDecoration(
                  color: CupertinoColors.systemGrey5.resolveFrom(context),
                ),
                padding: EdgeInsets.zero,
                onChanged: (value) {
                  // Implement search functionality here
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSidebarItem({
    required IconData icon,
    required String text,
    required int index,
  }) {
    final isSelected = widget.selectedIndex == index;
    return GestureDetector(
      onTap: () => widget.onItemTapped(index),
      child: Container(
        height: 32,
        margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
        decoration: BoxDecoration(
          color: isSelected
              ? CupertinoColors.systemGrey.withOpacity(0.2)
              : Colors.transparent,
          borderRadius: BorderRadius.circular(6),
        ),
        child: Row(
          children: [
            const SizedBox(width: 12),
            Icon(icon, size: 18, color: CupertinoColors.systemBlue),
            const SizedBox(width: 8),
            Text(
              text,
              style: TextStyle(
                fontSize: 14,
                color: CupertinoColors.label.resolveFrom(context),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  StreamSubscription? _linkSubscription;
  String? _pendingMessage;
  late CupertinoTabController _tabController;
  String? _pendingImageData;

  final List<Widget> _pages = [
    AskScreen(key: GlobalKey()),
    const FeedScreen(),
    AccountTab(),
  ];

  @override
  void initState() {
    super.initState();
    _tabController = CupertinoTabController(initialIndex: _selectedIndex);

    if (Platform.isIOS) {
      _initUniLinks();
    }

    if (Platform.isMacOS) {
      _setupHotkey();
    }
  }

  Future<void> _setupHotkey() async {
    await hotKeyManager.register(
      HotKey(
        key: PhysicalKeyboardKey.space,
        modifiers: [HotKeyModifier.alt],
        scope: HotKeyScope.system,
      ),
      keyDownHandler: (_) async {
        await _bringWindowToFocus();
        _switchToAskPageAndFocus();
      },
    );
  }

  Future<void> _removeHotkey() async {
    await hotKeyManager.unregister(
      HotKey(
        key: PhysicalKeyboardKey.space,
        modifiers: [HotKeyModifier.alt],
      ),
    );
  }

  void _switchToAskPageAndFocus() {
    setState(() {
      _selectedIndex = 0;
      _tabController.index = 0;
    });

    Future.delayed(Duration(milliseconds: 100), () {
      if (_pages[0] is AskScreen) {
        (_pages[0] as AskScreen).focusTextField();
      }
    });
  }

  Future<void> _bringWindowToFocus() async {
    await windowManager.show();
    await windowManager.focus();
  }

  void _handleIncomingLink(Uri uri) async {
    if (uri.host == 'send') {
      String? message = uri.queryParameters['message'];
      String? image = uri.queryParameters['image'];
      if (message != null && message.isNotEmpty) {
        print("** RECEIVE MESSAGE: $message **");
        _updateTabAndState(0, message: message);
      } else if (image != null && image == 'latest') {
        try {
          String? base64Image = await _getLatestImageAsBase64();
          if (base64Image != null) {
            _updateTabAndState(1, imageData: base64Image);
          }
        } catch (e) {
          print('Error getting latest image: $e');
        }
      }
    }
  }

  void _updateTabAndState(int index, {String? message, String? imageData}) {
    setState(() {
      _selectedIndex = index;
      _tabController.index = index;
      if (message != null) _pendingMessage = message;
      if (imageData != null) _pendingImageData = imageData;
    });
  }

  Future<String?> _getLatestImageAsBase64() async {
    final PermissionState ps = await PhotoManager.requestPermissionExtend();
    if (ps.isAuth) {
      final List<AssetPathEntity> albums =
          await PhotoManager.getAssetPathList(onlyAll: true);
      if (albums.isNotEmpty) {
        final AssetPathEntity recentAlbum = albums.first;
        final List<AssetEntity> recentAssets =
            await recentAlbum.getAssetListRange(start: 0, end: 1);
        if (recentAssets.isNotEmpty) {
          final AssetEntity latestAsset = recentAssets.first;
          final File? file = await latestAsset.file;
          if (file != null) {
            final List<int> imageBytes = await file.readAsBytes();
            final String base64Image = base64Encode(imageBytes);
            return base64Image;
          }
        }
      }
    } else {
      print('Permission not granted to access photos');
    }
    return null;
  }

  Future<void> _initUniLinks() async {
    _linkSubscription = uriLinkStream.listen((Uri? uri) {
      if (uri != null) {
        _handleIncomingLink(uri);
      }
    }, onError: (err) {
      print('Error processing incoming link: $err');
    });
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
    _linkSubscription?.cancel();
    if (Platform.isMacOS) {
      _removeHotkey();
    }
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth >= 600) {
          return SidebarLayout(
            selectedIndex: _selectedIndex,
            onItemTapped: _onItemTapped,
            child: _pages[_selectedIndex],
          );
        } else {
          return _buildTabNavigation();
        }
      },
    );
  }

  Widget _buildTabNavigation() {
    return CupertinoTabScaffold(
      controller: _tabController,
      tabBar: CupertinoTabBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.chat_bubble_2),
            label: 'Ask',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.square_list),
            label: 'Feed',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.person_crop_circle),
            label: 'Account',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
      tabBuilder: (BuildContext context, int index) {
        return CupertinoTabView(
          builder: (BuildContext context) {
            if (index == 0) {
              return AskScreen(
                  pendingMessage: _pendingMessage, key: GlobalKey());
            } else if (index == 1) {
              return FeedScreen(
                pendingImageData: _pendingImageData,
              );
            } else {
              return _pages[index];
            }
          },
        );
      },
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      // _pendingMessage = null;
      // _pendingImageData = null;
    });
  }
}
