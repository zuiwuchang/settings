import 'dart:ui';

import 'package:flutter/material.dart';

class MyScreenPage extends StatelessWidget {
  const MyScreenPage({super.key});
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final size = mediaQuery.size;
    final devicePixelRatio = mediaQuery.devicePixelRatio;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("屏幕信息"),
      ),
      body: Container(
        padding: EdgeInsets.all(8),
        child: ListView(
          children: [
            Text("實際像素/邏輯像素: $devicePixelRatio"),
            Text("邏輯分辨率: ${size.width} * ${size.height}"),
            Text(
                "實際分辨率: ${size.width * devicePixelRatio} * ${size.height * devicePixelRatio}"),
          ],
        ),
      ),
    );
  }
}
