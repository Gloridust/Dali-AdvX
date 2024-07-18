import 'dart:convert';

import 'package:dali_app/constants.dart';
import 'package:dali_app/services/ask_service.dart';
import 'package:dali_app/services/database.dart';
import 'package:dali_app/services/tts_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:just_audio/just_audio.dart';
import 'package:shared_preferences/shared_preferences.dart';
[Desensitization, reference only]

  void _showError(String message) {
    showCupertinoDialog(
      context: context,
      builder: (BuildContext context) => CupertinoAlertDialog(
        title: Text('Error'),
        content: Text(message),
        actions: <CupertinoDialogAction>[
          CupertinoDialogAction(
            isDefaultAction: true,
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text('OK'),
          ),
        ],
      ),
    );
  }

  bool _isAudioPlaying = false;

  void _playOrPauseAudio(String text) async {
    final textToSpeechService = ref.read(textToSpeechServiceProvider);
    if (_isAudioPlaying) {
      await _audioPlayer.pause();
      setState(() {
        _isAudioPlaying = false;
      });
    } else {
      setState(() {
        _isGeneratingAudio = true;
      });
      try {
        if (_audioPlayer.audioSource == null) {
          final audioFilePath =
              await textToSpeechService.getAudioFilePath(text);
          await _audioPlayer.setFilePath(audioFilePath);
        }
        await _audioPlayer.play();
        setState(() {
          _isAudioPlaying = true;
        });
      } catch (e) {
        _showError('Failed to generate or play audio: $e');
      } finally {
        setState(() {
          _isGeneratingAudio = false;
        });
      }
    }
  }

  Widget _buildMessage(Map<String, dynamic> message, double maxWidth) {
    final isUser = message['role'] == 'user';
    final bubbleColor =
        isUser ? CupertinoColors.activeBlue : CupertinoColors.systemGrey5;
    final textColor = isUser ? CupertinoColors.white : CupertinoColors.black;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
      child: Column(
        crossAxisAlignment:
            isUser ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment:
                isUser ? MainAxisAlignment.end : MainAxisAlignment.start,
            children: [
              GestureDetector(
                onSecondaryTapUp: (details) {
                  _showContextMenu(
                      context, details.globalPosition, message['content']);
                },
                child: ConstrainedBox(
                  constraints: BoxConstraints(
                    maxWidth: maxWidth * 0.75,
                    minWidth: 40,
                  ),
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                    decoration: BoxDecoration(
                      color: bubbleColor,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      message['content']!,
                      style: TextStyle(color: textColor),
                    ),
                  ),
                ),
              ),
              if (!isUser)
                CupertinoButton(
                  padding: EdgeInsets.zero,
                  child: _isGeneratingAudio
                      ? CupertinoActivityIndicator()
                      : Icon(
                          _isAudioPlaying
                              ? CupertinoIcons.pause_circle
                              : CupertinoIcons.play_circle,
                          size: 24),
                  onPressed: _isGeneratingAudio
                      ? null
                      : () => _playOrPauseAudio(message['content']),
                ),
            ],
          ),
          if (isUser && message['read'] == true)
            Padding(
              padding: const EdgeInsets.only(top: 2, right: 8),
              child: Text(
                'Read',
                style:
                    TextStyle(color: CupertinoColors.systemGrey, fontSize: 12),
              ),
            ),
        ],
      ),
    );
  }

  Widget _buildContextMenu(BuildContext context, String content) {
    return CupertinoActionSheet(
      actions: <CupertinoActionSheetAction>[
        CupertinoActionSheetAction(
          child: const Text('Copy Message'),
          onPressed: () {
            Clipboard.setData(ClipboardData(text: content));
            Navigator.pop(context);
          },
        ),
        CupertinoActionSheetAction(
          child: const Text('Thanks'),
          onPressed: () {
            // Implement "Thanks" action
            Navigator.pop(context);
          },
        ),
      ],
      cancelButton: CupertinoActionSheetAction(
        child: const Text('Cancel'),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }

  void _showContextMenu(
      BuildContext context, Offset? position, String content) {
    if (position != null) {
      // For desktop (right-click)
      showCupertinoModalPopup(
        context: context,
        builder: (BuildContext context) => _buildContextMenu(context, content),
      );
    } else {
      // For mobile (long-press)
      showCupertinoModalPopup(
        context: context,
        builder: (BuildContext context) => _buildContextMenu(context, content),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return ref.watch(askServiceProvider).when(
          data: (askService) => CupertinoPageScaffold(
            navigationBar: CupertinoNavigationBar(
              leading: Row(children: [
                Text(
                  'To:  ',
                  style: TextStyle(color: CupertinoColors.placeholderText),
                ),
                Text('Dali Assistant')
              ]),
              trailing: CupertinoButton(
                padding: EdgeInsets.zero,
                onPressed: null,
                child: Icon(CupertinoIcons.info),
              ),
            ),
            child: SafeArea(
              child: Column(
                children: [
                  Expanded(
                    child: LayoutBuilder(
                      builder: (context, constraints) {
                        return ListView.builder(
                          reverse: true,
                          itemCount: _messages.length,
                          itemBuilder: (context, index) {
                            return _buildMessage(
                                _messages[index], constraints.maxWidth);
                          },
                        );
                      },
                    ),
                  ),
                  _buildTextComposer(askService),
                ],
              ),
            ),
          ),
          loading: () => const Center(child: CupertinoActivityIndicator()),
          error: (error, stack) {
            WidgetsBinding.instance.addPostFrameCallback((_) {
              _showError('Failed to initialize AskService: $error');
            });
            return Center(child: Text('Error occurred'));
          },
        );
  }
}
