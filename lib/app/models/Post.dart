// ignore_for_file: file_names, constant_identifier_names

import 'dart:convert';
import 'package:aaab/app/models/PostStatus.dart';

class Post {
  final String? title;
  final String? photo;
  final String? petName;
  final PostStatus? status;
  final String? description;

  Post({this.title, this.photo, this.petName, this.status, this.description});

  Post copyWith(
          {String? title,
          String? photo,
          String? petName,
          PostStatus? status,
          String? description}) =>
      Post(
        title: title ?? this.title,
        photo: photo ?? this.photo,
        petName: petName ?? this.petName,
        status: status ?? this.status,
        description: description ?? this.description,
      );

  Map<String, dynamic> toMap() => {
        'title': title,
        'photo': photo,
        'petName': petName,
        'status': 'status',
        'description': description,
      };

  String toJson() => json.encode(toMap());

  factory Post.fromMap(Map<String, dynamic> map) => Post(
      title: map['title'],
      photo: map['photo'],
      petName: map['petName'],
      status: map['status'],
      description: map['description']);
  factory Post.fromJson(String source) => Post.fromMap(json.decode(source));

  @override
  String toString() =>
      'Post(title: $title, photo: $photo, petName: $petName, status: $status, description: $description)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Post &&
        other.title == title &&
        other.photo == photo &&
        other.petName == petName &&
        other.status == status &&
        other.description == description;
  }

  @override
  int get hashCode =>
      title.hashCode ^
      photo.hashCode ^
      petName.hashCode ^
      status.hashCode ^
      description.hashCode;
}
