### 👻 Plugin channel android notification
Plugin channel android notification this plugins for custom notifcation at android

Contoh : 
``` dart
final androidChannel = PluginsChannelNotificationAndroid();

final applauseChannel = NotificationAndroidChannel(
      id: 'applause_channel', name: 'Applause', sound: 'applause');

/// [FOLDER] android/app/src/main/res/raw/applause.[wav|mp3]

androidChannel.setNotificationChannel(applauseChannel);
```
