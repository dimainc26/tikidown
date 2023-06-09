// ignore_for_file: non_constant_identifier_names

import 'package:json_annotation/json_annotation.dart';

part 'user_post_class.g.dart';

@JsonSerializable()
class UserInfo {
  String id;

  String? name;
  String? username;
  String? profileImg;

  String? thumbnail;
  String? views;
  String? loves;
  String? comments;
  String? shares;

  String? no_wm;
  String? wm;

  String? sound_name;
  String? sound_url;

  UserInfo({
    required this.id,
     this.name,
     this.username,
    this.profileImg,


    this.thumbnail,
    this.views,
    this.loves,
    this.comments,
    this.shares,

    this.no_wm,
    this.wm,

    this.sound_name,
    this.sound_url,

  });

  factory UserInfo.fromJson(Map<String, dynamic> json) =>
      _$UserInfoFromJson(json);
  Map<String, dynamic> toJson() => _$UserInfoToJson(this);
}
