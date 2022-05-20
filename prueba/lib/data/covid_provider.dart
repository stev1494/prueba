import 'package:flutter/material.dart';
import 'package:client_dart_plugin/src/messages/respCurrent.dart';
import 'package:client_dart_plugin/src/messages/rqCovid.dart';
import 'package:client_dart_plugin/src/controllers/covidController.dart';

class CovidCurrentProvider extends ChangeNotifier{
  RespCurrent covid;

  Future<RespCurrent> datosCovid() async {
    RqCovid rq;
    var cl = new CovidController();
    this.covid = await cl.consultaCovid(rq);
    notifyListeners();
    return covid;
  }
}