// ignore_for_file: file_names

import 'dart:convert';

class Shelter {
  final String? image;
  final String? name;
  final String? description;
  final String? location;

  Shelter({this.image, this.name, this.description, this.location});

  Shelter copyWith({
    String? image,
    String? name,
    String? description,
    String? location,
  }) =>
      Shelter(
        image: image ?? this.image,
        name: name ?? this.name,
        description: description ?? this.description,
        location: location ?? this.location,
      );

  Map<String, dynamic> toMap() => {
        'image': image,
        'name': name,
        'description': description,
        'location': location,
      };

  String toJson() => json.encode(toMap());

  factory Shelter.fromMap(Map<String, dynamic>? map) => Shelter(
        image: map?['image'] ?? '',
        name: map?['name'] ?? '',
        description: map?['description'] ?? '',
        location: map?['location'] ?? '',
      );
  factory Shelter.fromJson(String source) =>
      Shelter.fromMap(json.decode(source));

  @override
  String toString() =>
      'User(image: $image, name: $name, description: $description, location: $location, )';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Shelter &&
        other.image == image &&
        other.name == name &&
        other.description == description &&
        other.location == location;
  }

  @override
  int get hashCode => image.hashCode ^ name.hashCode;
}
