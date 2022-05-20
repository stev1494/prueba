import 'package:client_dart_plugin/src/messages/rqCovid.dart';
import 'package:client_dart_plugin/src/messages/respCurrent.dart';
import 'package:client_dart_plugin/src/client_rest.dart';

import '../../utils/urls.dart';

class CovidController extends ControllerBaseRest {

  Future<RespCurrent> consultaCovid(RqCovid rq) async {
    
    var rp = RespCurrent();

    try {

      final rpMap = await postREST(
        Urls.current,
        rq.toJson(),
      );
      if (rpMap != null) {
        rp = RespCurrent.fromJson(rpMap);
      } else {
        // Aqui podemos tener una variable que controle si la petición se hizo o no
      }

    } catch(ex) {
      // Aqui podemos tener una variable que controle si la petición se hizo o no
    }

    return rp;
  }
  
}