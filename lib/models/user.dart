import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart'; // i want u to genarate me a file form this file

@JsonSerializable() // this should be befor the class

class User {
  int? id;
  String username;
  String? password;

  User({
    required this.username,
    this.password,
    this.id,
  });

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
  Map<String, dynamic> toJson() => _$UserToJson(this);
}
