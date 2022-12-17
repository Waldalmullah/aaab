// ignore_for_file: file_names

import 'dart:convert';

class User {
  final String? email;
  final String? name;

  User(this.email, this.name);

  User copyWith({String? email, String? userName}) =>
      User(email ?? this.email, name ?? this.name);

  Map<String, dynamic> toMap() => {
        'email': email,
        'name': name,
      };

  String toJson() => json.encode(toMap());

  factory User.fromMap(Map<String, dynamic> map) => User(map['email'], map['userName']);
  factory User.fromJson(String source) => User.fromMap(json.decode(source));

  @override
  String toString() => 'User(email: $email, userName: $name)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is User && other.email == email && other.name == name;
  }

  @override
  int get hashCode => email.hashCode ^ name.hashCode;
}
