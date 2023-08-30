import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:plugins_channel_notification_android/models/channel_notification_android.dart';

import 'plugins_channel_notification_android_platform_interface.dart';

/// An implementation of [PluginsChannelNotificationAndroidPlatform] that uses method channels.
class MethodChannelPluginsChannelNotificationAndroid
    extends PluginsChannelNotificationAndroidPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel =
      const MethodChannel('plugins_channel_notification_android');

  @override
  Future<String?> getPlatformVersion() async {
    final version =
        await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }

  @override
  Future<bool> setNotificationChannel(
      NotificationAndroidChannel channel) async {
    final status = await methodChannel.invokeMethod<bool>(
        'createNotificationChannel', channel.toMap());
    return status ?? false;
  }
}
