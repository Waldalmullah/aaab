import 'dart:convert';

import 'package:aaab/app/models/Post.dart';
import 'package:aaab/app/models/User.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class PostActivity {
  final Timestamp? date;
  final Post? post;
  final User? from_user;
  final String? message;
  final User? user;

  PostActivity({this.date, this.post, this.from_user, this.user, this.message});

  PostActivity copyWith({
    Timestamp? date,
    Post? post,
    User? from_user,
    User? user,
    String? message,
  }) =>
      PostActivity(
        date: date ?? this.date,
        post: post ?? this.post,
        from_user: from_user ?? this.from_user,
        user: user ?? this.user,
        message: message ?? this.message,
      );

  Map<String, dynamic> toMap() => {
        'date': date,
        'post': post,
        'from_user': from_user,
        'user': user,
        'message': message,
      };

  String toJson() => json.encode(toMap());

  factory PostActivity.fromMap(Map<String, dynamic>? map) => PostActivity(
        date: map?['date'] ?? '',
        post: map?['post'] ?? '',
        from_user: map?['from_user'] ?? '',
        user: map?['user'] ?? '',
        message: map?['message'] ?? '',
      );
  factory PostActivity.fromJson(String source) =>
      PostActivity.fromMap(json.decode(source));

  @override
  String toString() =>
      'User(date: $date, post: $post, from_user: $from_user, user: $user, message: $message)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is PostActivity &&
        other.date == date &&
        other.post == post &&
        other.from_user == from_user &&
        other.message == message &&
        other.user == user;
  }

  @override
  int get hashCode =>
      date.hashCode ^ post.hashCode ^ from_user.hashCode ^ user.hashCode;
}
