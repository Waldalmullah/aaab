// ignore_for_file: file_names

import 'dart:convert';

class User {
  final String? email;
  final String? name;
  final String? governance;
  final String? dob;
  final String? image;

  User(this.email, this.name, this.governance, this.dob, this.image);

  User copyWith({
    String? email,
    String? userName,
    String? governance,
    String? dob,
  }) =>
      User(
        email ?? this.email,
        name ?? this.name,
        governance ?? this.governance,
        dob ?? this.dob,
        image ?? this.image,
      );

  Map<String, dynamic> toMap() => {
        'email': email,
        'name': name,
        'governance': governance,
        'dob': dob,
        'image': image,
      };

  String toJson() => json.encode(toMap());

  factory User.fromMap(Map<String, dynamic>? map) => User(
        map?['email'] ?? '',
        map?['name'] ?? '',
        map?['governance'] ?? '',
        map?['dob'] ?? '',
        map?['image'] ?? '',
      );
  factory User.fromJson(String source) => User.fromMap(json.decode(source));

  @override
  String toString() =>
      'User(email: $email, name: $name, governance: $governance, dob: $dob, image: $image)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is User &&
        other.email == email &&
        other.name == name &&
        other.governance == governance &&
        other.image == image &&
        other.dob == dob;
  }

  @override
  int get hashCode => email.hashCode ^ name.hashCode;
}
