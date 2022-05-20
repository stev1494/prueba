
import 'package:json_annotation/json_annotation.dart';

part 'rpCovid.g.dart';

@JsonSerializable()
class RpCovid {

  int date;
  int states;
  int positive;
  int negative;
  int pending;
  int hospitalizedCurrently;
  int hospitalizedCumulative;
  int inIcuCurrently;
  int inIcuCumulative;
  int onVentilatorCurrently;
  int onVentilatorCumulative;
  String dateChecked;
  int death;
  int hospitalized;
  int totalTestResults;
  String lastModified;
  int recovered;
  int total;
  int posNeg;
  int deathIncrease;
  int hospitalizedIncrease;
  int negativeIncrease;
  int positiveIncrease;
  int totalTestResultsIncrease;
  String hash;


  RpCovid();
  RpCovid.param({
      this.date,
      this.states,
      this.positive,
      this.negative,
      this.pending,
      this.hospitalizedCurrently,
      this.hospitalizedCumulative,
      this.inIcuCurrently,
      this.inIcuCumulative,
      this.onVentilatorCurrently,
      this.onVentilatorCumulative,
      this.dateChecked,
      this.death,
      this.hospitalized,
      this.totalTestResults,
      this.lastModified,
      this.recovered,
      this.total,
      this.posNeg,
      this.deathIncrease,
      this.hospitalizedIncrease,
      this.negativeIncrease,
      this.positiveIncrease,
      this.totalTestResultsIncrease,
      this.hash}
  );

  factory RpCovid.fromJson(Map<String, dynamic> json) => _$RpCovidFromJson(json);
  Map<String, dynamic> toJson() => _$RpCovidToJson(this);
}