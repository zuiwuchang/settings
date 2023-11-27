import 'package:flutter/material.dart';
import 'package:android_intent_plus/android_intent.dart';
import 'package:settings/dialog.dart';
import 'package:settings/settings.dart';
import 'package:settings/tv/focusable.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '打開 Activity',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: '打開 Activity'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: ListView.builder(
          itemCount: simpleSettings.length,
          itemBuilder: (context, index) {
            final setting = simpleSettings[index];
            return FocusableWidget(
              child: ListTile(
                title: Text(setting.name),
                subtitle: Text(setting.action),
                onTap: () async {
                  try {
                    await AndroidIntent(
                      action: setting.action,
                    ).launch();
                  } catch (e) {
                    debugPrint("$e");
                    showErrorMessageDialog(context, e);
                  }
                },
              ),
            );
          }),
    );
  }
}
