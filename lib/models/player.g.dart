// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'player.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Player _$$_PlayerFromJson(Map<String, dynamic> json) => _$_Player(
      nickname: json['nickname'] as String,
      balance: json['balance'] as int,
      clubMember: json['clubMember'] as String,
      starCounter: json['starCounter'] as int,
      imageUrl: json['imageUrl'] as String?,
    );

Map<String, dynamic> _$$_PlayerToJson(_$_Player instance) => <String, dynamic>{
      'nickname': instance.nickname,
      'balance': instance.balance,
      'clubMember': instance.clubMember,
      'starCounter': instance.starCounter,
      'imageUrl': instance.imageUrl,
    };
