// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'respCurrent.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RespCurrent _$RespCurrentFromJson(Map<String, dynamic> json) {
  return RespCurrent()
    ..rp = (json['rp'] as List)
        ?.map((e) =>
            e == null ? null : RpCovid.fromJson(e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$RespCurrentToJson(RespCurrent instance) =>
    <String, dynamic>{
      'rp': instance.rp,
    };
