import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void copytoClipBoard(String text, BuildContext context) async {
  await Clipboard.setData(ClipboardData(text: text));
  if (context.mounted) {
    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(
        const SnackBar(
          behavior: SnackBarBehavior.floating,
          duration: Duration(seconds: 1),
          content: Center(child: Text("Copied Successfully")),
        ),
      );
  }
}
