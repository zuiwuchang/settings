import 'package:flutter/material.dart';
import 'package:android_intent_plus/android_intent.dart';
import 'package:settings/dialog.dart';
import 'package:settings/screen.dart';
import 'package:settings/settings.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '設定助手',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: '設定助手'),
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
          itemCount: simpleSettings.length + 1,
          itemBuilder: (context, index) {
            if (index == 0) {
              return ListTile(
                title: Text("獲取屏幕信息"),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => MyScreenPage(),
                  ));
                },
              );
            }
            final setting = simpleSettings[index - 1];
            return ListTile(
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
            );
          }),
    );
  }
}
