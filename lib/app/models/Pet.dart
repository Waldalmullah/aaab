// ignore_for_file: file_names

import 'dart:convert';

class Pet {
  final String? name;
  final String? image;
  final String? disruption;

  Pet(this.name, this.image, this.disruption);

  Pet copyWith({
    String? name,
    String? image,
    String? disruption,
  }) =>
      Pet(
        name ?? this.name,
        image ?? this.image,
        disruption ?? this.disruption,
      );

  Map<String, dynamic> toMap() => {
        'name': name,
        'image': image,
        'disruption': disruption,
      };

  String toJson() => json.encode(toMap());

  factory Pet.fromMap(Map<String, dynamic>? map) => Pet(
        map?['name'] ?? '',
        map?['image'] ?? '',
        map?['disruption'] ?? '',
      );
  factory Pet.fromJson(String source) => Pet.fromMap(json.decode(source));

  @override
  String toString() =>
      'Pet(name: $name, image: $image, disruption: $disruption,)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Pet &&
        other.name == name &&
        other.image == image &&
        other.disruption == disruption;
  }

  @override
  int get hashCode => name.hashCode ^ image.hashCode ^ disruption.hashCode;
}
