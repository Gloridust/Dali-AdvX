import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AccountTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: CupertinoColors.systemGroupedBackground,
      navigationBar: CupertinoNavigationBar(
        middle: Text('Health Profile'),
      ),
      child: SafeArea(
        child: ListView(
          children: [
            [Desensitization, reference only]
          ],
        ),
      ),
    );
  }
[Desensitization, reference only]
 [Desensitization, reference only]
  Widget _buildPrivacyInfo() {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Text(
        'Your data is encrypted on your device and can only be shared with your permission.',
      ),
    );
  }

  Widget _buildExportButton() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: CupertinoButton(
        color: CupertinoColors.activeBlue,
        child: Text('Export All Health Data'),
        onPressed: () {
          // Handle export action
        },
      ),
    );
  }
}
