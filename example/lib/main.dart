import 'package:flutter/material.dart';

import 'package:plugins_channel_notification_android/models/channel_notification_android.dart';
import 'package:plugins_channel_notification_android/plugins_channel_notification_android.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _pluginsChannelNotificationAndroidPlugin =
      PluginsChannelNotificationAndroid();

  @override
  void initState() {
    super.initState();
  }

  // Platform messages are asynchronous, so we initialize in an async method.
  // Future<void> initPlatformState() async {

  //   // Platform messages may fail, so we use a try/catch PlatformException.
  //   // We also handle the message potentially returning null.
  //   try {
  //     platformVersion =
  //         await _pluginsChannelNotificationAndroidPlugin.getPlatformVersion() ?? 'Unknown platform version';
  //   } on PlatformException {
  //     platformVersion = 'Failed to get platform version.';
  //   }

  //   // If the widget was removed from the tree while the asynchronous platform
  //   // message was in flight, we want to discard the reply rather than calling
  //   // setState to update our non-existent appearance.
  //   if (!mounted) return;

  //   setState(() {

  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: const Center(
          child: Text('Running on'),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () async {
            final status = await _pluginsChannelNotificationAndroidPlugin
                .setNotificationChannel(
              NotificationAndroidChannel(
                id: 'notification_sound',
                name: 'sound_tiktok',
                sound: 'congratulation',
              ),
            );
            debugPrint(status.toString());
          },
          child: const Icon(Icons.abc),
        ),
      ),
    );
  }
}
