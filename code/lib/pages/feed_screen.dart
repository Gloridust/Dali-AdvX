import 'dart:convert';
import 'dart:io';
import 'package:dali_app/constants.dart';
import 'package:dali_app/models/feed_record.dart';
import 'package:dali_app/pages/feed_detail_page.dart';
import 'package:dali_app/provider.dart';
import 'package:dali_app/services/database.dart';
import 'package:dali_app/services/feed_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:hotkey_manager/hotkey_manager.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';
import 'package:screen_capturer/screen_capturer.dart';

  Future<void> captureScreenshot({bool silentSend = false}) async {
    final directory = await getApplicationDocumentsDirectory();
    final imageName = 'Screenshot-${DateTime.now().millisecondsSinceEpoch}.png';
    final imagePath = '${directory.path}/Screenshots/$imageName';

    final capturedData = await screenCapturer.capture(
      mode: CaptureMode.region,
      imagePath: imagePath,
      copyToClipboard: true,
    );

    if (capturedData == null || capturedData.imagePath == null) return;

    if (silentSend) {
      print("TRIGGER SILENT");
      await _sendImageSilently(capturedData.imagePath!);
    } else {
      setState(() {
        _image = XFile(capturedData.imagePath!);
        _imageBytes = null;
      });
    }
  }

  Future<void> _init() async {
    _feedService = FeedService(
        openaiApiKey: apiKey_2,
        openaiApiBase: apiBase_2,
        database: await AppDatabase().database);
  }

  Future<String> _saveImageToAppDirectory(Uint8List imageData) async {
    final directory = await getApplicationDocumentsDirectory();
    final path = '${directory.path}/images';
    final imageName = 'image_${DateTime.now().millisecondsSinceEpoch}.png';
    final filePath = '$path/$imageName';

    final dir = Directory(path);
    if (!dir.existsSync()) {
      dir.createSync(recursive: true);
    }

    final file = File(filePath);
    await file.writeAsBytes(imageData);

    return filePath;
  }

  void _clearSelectedImage() {
    setState(() {
      _image = null;
      _imageBytes = null;
    });
  }
[Desensitization, reference only]
    print(imageAnalysis);

    final structuredData = await _feedService.structureData(
      text + (imageAnalysis ?? ''),
    );

    print(structuredData);

    if (structuredData.isNotEmpty) {
      final databaseId = await _feedService.insertOrderData(structuredData);

      ref.read(recordProvider).add(FeedRecord(
          additionalText: text,
          mediaUrl: imagePath,
          createDate: DateTime.now(),
          id: DateTime.now().millisecondsSinceEpoch.toString(),
          databaseId: databaseId.toString()));
    }



  Widget _buildTextComposer() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
      child: Row(
        children: <Widget>[
          CupertinoButton(
            padding: EdgeInsets.zero,
            onPressed: _getImage,
            child: const Icon(CupertinoIcons.photo),
          ),
          if (Platform.isMacOS)
            CupertinoButton(
              padding: const EdgeInsets.all(2),
              onPressed: _pasteImageFromClipboard,
              child: const Icon(CupertinoIcons.doc_on_clipboard),
            ),
          if (Platform.isMacOS)
            CupertinoButton(
              padding: const EdgeInsets.all(2),
              onPressed: captureScreenshot,
              child: const Icon(CupertinoIcons.camera),
            ),
          if (Platform.isIOS)
            CupertinoButton(
              padding: const EdgeInsets.all(2),
              onPressed: captureScreenshot,
              child: const Icon(CupertinoIcons.camera),
            ),
          const SizedBox(
            width: 12,
          ),
          Expanded(
            child: CupertinoTextField(
              controller: _textController,
              onSubmitted: (text) => _handleSubmitted,
              placeholder: "iMessage",
              decoration: BoxDecoration(
                color: CupertinoColors.systemGrey6,
                borderRadius: BorderRadius.circular(20),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            ),
          ),
          CupertinoButton(
            padding: EdgeInsets.zero,
            child: _isLoading
                ? const CupertinoActivityIndicator()
                : const Icon(CupertinoIcons.arrow_up_circle_fill, size: 30),
            onPressed: () => _handleSubmitted(_textController.text),
          ),
        ],
      ),
    );
  }
}
