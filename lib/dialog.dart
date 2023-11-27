import 'package:flutter/material.dart';
import 'package:settings/tv/focusable.dart';

/// 打開一個 顯示錯誤的 模式對話框
Future<void> showErrorMessageDialog(BuildContext context, e) {
  return showDialog<void>(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text("錯誤"),
        content: SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              Text(
                "$e",
                style: TextStyle(color: Theme.of(context).colorScheme.error),
              ),
            ],
          ),
        ),
        actions: <Widget>[
          FocusableWidget(
            child: TextButton(
              child: Text(MaterialLocalizations.of(context).closeButtonLabel),
              onPressed: () => Navigator.of(context).pop(),
            ),
          ),
        ],
      );
    },
  );
}

/// 打開一個 顯示錯誤的 模式對話框
Future<void> showErrorListMessageDialog(BuildContext context, List? errors) {
  return showDialog<void>(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text("錯誤"),
        content: SingleChildScrollView(
          child: ListBody(
            children: errors
                    ?.map((data) => Text(
                          "$data",
                          style: TextStyle(
                              color: Theme.of(context).colorScheme.error),
                        ))
                    .toList() ??
                <Widget>[],
          ),
        ),
        actions: <Widget>[
          FocusableWidget(
            child: TextButton(
              child: Text(MaterialLocalizations.of(context).closeButtonLabel),
              onPressed: () => Navigator.of(context).pop(),
            ),
          ),
        ],
      );
    },
  );
}
