import 'package:plugin_platform_interface/plugin_platform_interface.dart';
import 'package:plugins_channel_notification_android/models/channel_notification_android.dart';

import 'plugins_channel_notification_android_method_channel.dart';

abstract class PluginsChannelNotificationAndroidPlatform
    extends PlatformInterface {
  /// Constructs a PluginsChannelNotificationAndroidPlatform.
  PluginsChannelNotificationAndroidPlatform() : super(token: _token);

  static final Object _token = Object();

  static PluginsChannelNotificationAndroidPlatform _instance =
      MethodChannelPluginsChannelNotificationAndroid();

  /// The default instance of [PluginsChannelNotificationAndroidPlatform] to use.
  ///
  /// Defaults to [MethodChannelPluginsChannelNotificationAndroid].
  static PluginsChannelNotificationAndroidPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [PluginsChannelNotificationAndroidPlatform] when
  /// they register themselves.
  static set instance(PluginsChannelNotificationAndroidPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }

  Future<bool> setNotificationChannel(NotificationAndroidChannel channel) {
    throw UnimplementedError(
        'setNotificationChannel() has not been implemented.');
  }
}
