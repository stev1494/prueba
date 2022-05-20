
import 'package:json_annotation/json_annotation.dart';

part 'rqCovid.g.dart';

@JsonSerializable()
class RqCovid {
  RqCovid();


  factory RqCovid.fromJson(Map<String, dynamic> json) => _$RqCovidFromJson(json);
  Map<String, dynamic> toJson() => _$RqCovidToJson(this);
}