
import 'package:json_annotation/json_annotation.dart';
import 'package:client_dart_plugin/src/messages/rpCovid.dart';

part 'respCurrent.g.dart';

@JsonSerializable()
class RespCurrent {
  List<RpCovid> rp;


  RespCurrent();
  RespCurrent.param({this.rp}
  );

  factory RespCurrent.fromJson(Map<String, dynamic> json) => _$RespCurrentFromJson(json);
  Map<String, dynamic> toJson() => _$RespCurrentToJson(this);
}