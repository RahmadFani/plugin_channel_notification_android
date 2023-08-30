import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class NotificationAndroidChannel {
  final String id;
  final String name;
  final String description;
  final String sound;
  NotificationAndroidChannel({
    required this.id,
    required this.name,
    this.description = '',
    this.sound = 'default',
  });

  NotificationAndroidChannel copyWith({
    String? id,
    String? name,
    String? description,
    String? sound,
  }) {
    return NotificationAndroidChannel(
      id: id ?? this.id,
      name: name ?? this.name,
      description: description ?? this.description,
      sound: sound ?? this.sound,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'description': description,
      'sound': sound,
    };
  }

  factory NotificationAndroidChannel.fromMap(Map<String, dynamic> map) {
    return NotificationAndroidChannel(
      id: map['id'] as String,
      name: map['name'] as String,
      description: map['description'] as String,
      sound: map['sound'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory NotificationAndroidChannel.fromJson(String source) =>
      NotificationAndroidChannel.fromMap(
          json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'NotificationAndroidChannel(id: $id, name: $name, description: $description, sound: $sound)';
  }

  @override
  bool operator ==(covariant NotificationAndroidChannel other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.name == name &&
        other.description == description &&
        other.sound == sound;
  }

  @override
  int get hashCode {
    return id.hashCode ^ name.hashCode ^ description.hashCode ^ sound.hashCode;
  }
}
