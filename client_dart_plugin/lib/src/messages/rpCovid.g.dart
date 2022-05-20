// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rpCovid.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RpCovid _$RpCovidFromJson(Map<String, dynamic> json) {
  return RpCovid()
    ..date = json['date'] as int
    ..states = json['states'] as int
    ..positive = json['positive'] as int
    ..negative = json['negative'] as int
    ..pending = json['pending'] as int
    ..hospitalizedCurrently = json['hospitalizedCurrently'] as int
    ..hospitalizedCumulative = json['hospitalizedCumulative'] as int
    ..inIcuCurrently = json['inIcuCurrently'] as int
    ..inIcuCumulative = json['inIcuCumulative'] as int
    ..onVentilatorCurrently = json['onVentilatorCurrently'] as int
    ..onVentilatorCumulative = json['onVentilatorCumulative'] as int
    ..dateChecked = json['dateChecked'] as String
    ..death = json['death'] as int
    ..hospitalized = json['hospitalized'] as int
    ..totalTestResults = json['totalTestResults'] as int
    ..lastModified = json['lastModified'] as String
    ..recovered = json['recovered'] as int
    ..total = json['total'] as int
    ..posNeg = json['posNeg'] as int
    ..deathIncrease = json['deathIncrease'] as int
    ..hospitalizedIncrease = json['hospitalizedIncrease'] as int
    ..negativeIncrease = json['negativeIncrease'] as int
    ..positiveIncrease = json['positiveIncrease'] as int
    ..totalTestResultsIncrease = json['totalTestResultsIncrease'] as int
    ..hash = json['hash'] as String;
}

Map<String, dynamic> _$RpCovidToJson(RpCovid instance) => <String, dynamic>{
      'date': instance.date,
      'states': instance.states,
      'positive': instance.positive,
      'negative': instance.negative,
      'pending': instance.pending,
      'hospitalizedCurrently': instance.hospitalizedCurrently,
      'hospitalizedCumulative': instance.hospitalizedCumulative,
      'inIcuCurrently': instance.inIcuCurrently,
      'inIcuCumulative': instance.inIcuCumulative,
      'onVentilatorCurrently': instance.onVentilatorCurrently,
      'onVentilatorCumulative': instance.onVentilatorCumulative,
      'dateChecked': instance.dateChecked,
      'death': instance.death,
      'hospitalized': instance.hospitalized,
      'totalTestResults': instance.totalTestResults,
      'lastModified': instance.lastModified,
      'recovered': instance.recovered,
      'total': instance.total,
      'posNeg': instance.posNeg,
      'deathIncrease': instance.deathIncrease,
      'hospitalizedIncrease': instance.hospitalizedIncrease,
      'negativeIncrease': instance.negativeIncrease,
      'positiveIncrease': instance.positiveIncrease,
      'totalTestResultsIncrease': instance.totalTestResultsIncrease,
      'hash': instance.hash,
    };
