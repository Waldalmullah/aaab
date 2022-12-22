// ignore_for_file: file_names, constant_identifier_names

import 'dart:convert';
import 'package:aaab/app/models/PostStatus.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';

class Post {
  final String? title;
  final String? photo;
  final String? petName;
  final PostStatus? status;
  final String? description;
  final int? likes;
  final DocumentReference? user;

  Post(
      {this.title,
      this.photo,
      this.petName,
      this.status,
      this.description,
      this.likes,
      this.user});

  Post copyWith({
    String? title,
    String? photo,
    String? petName,
    PostStatus? status,
    String? description,
    int? likes,
    DocumentReference? user,
  }) =>
      Post(
        title: title ?? this.title,
        photo: photo ?? this.photo,
        petName: petName ?? this.petName,
        status: status ?? this.status,
        description: description ?? this.description,
        likes: likes ?? this.likes,
        user: user ?? this.user,
      );

  Map<String, dynamic> toMap() => {
        'title': title,
        'photo': photo,
        'petName': petName,
        'status': status?.name ?? PostStatus.NONE,
        'description': description,
        'likes': likes,
        'user': user,
      };

  String toJson() => json.encode(toMap());

  factory Post.fromMap(Map<String, dynamic> map) {
    if (map.isEmpty) return Post();

    return Post(
      title: map['title'],
      photo: map['photo'],
      likes: map['likes'],
      petName: map['petName'],
      status: PostStatus.values
          .firstWhere((e) => describeEnum(e) == map['status'].toUpperCase()),
      description: map['description'],
      user: map['user'],
    );
  }
  factory Post.fromJson(String source) => Post.fromMap(json.decode(source));

  @override
  String toString() =>
      'Post(title: $title, photo: $photo, petName: $petName, status: $status, description: $description, user: $user, likes: $likes)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Post &&
        other.title == title &&
        other.photo == photo &&
        other.petName == petName &&
        other.status == status &&
        other.likes == likes &&
        other.user == user &&
        other.description == description;
  }

  @override
  int get hashCode =>
      title.hashCode ^
      photo.hashCode ^
      petName.hashCode ^
      status.hashCode ^
      user.hashCode ^
      likes.hashCode ^
      description.hashCode;
}
