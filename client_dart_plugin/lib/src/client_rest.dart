import 'dart:convert';
import 'dart:io';
import 'package:client_dart_plugin/utils/urls.dart';
import 'package:http/http.dart' as http;


class ControllerBaseRest {
  final headers = {'Content-type': 'application/json'};
  String mensajeErr = "";

  ControllerBaseRest();

  bool isNullOrEmpty(dynamic obj) =>
      obj == null ||
      ((obj is String || obj is List || obj is Map) && obj.isEmpty);

  Future<Map<String, dynamic>> postREST(String uri, Map<String, dynamic> body,
      {bool metodFree = true}) async {
    Map<String, dynamic> rpMap = <String, dynamic>{};
    try {
      var uriFinal = Uri.parse(Urls.apiRest + uri);
      final jsonStr = json.encode(body);
      var response;
      response = await http.post(uriFinal, body: jsonStr, headers: headers);

      if (response == null) throw NullThrownError;

      if (response.statusCode == 200) {
        rpMap = jsonDecode(response.body);
      } else {
        var strStatusCode = '';
        switch (response.statusCode) {
          case 307: //Temporary Redirect
            strStatusCode = ' Redirección';
            break;
          case 400: //Bad Request
            strStatusCode = ' Requerimiento errado.';
            break;
          case 401: //Unauthorized
            strStatusCode = ' No autorizado.';
            break;
          case 403: //Forbidden
            strStatusCode = ' Prohibido.';
            break;
          case 405: //Method Not Allowed
            strStatusCode = ' Método no permitido.';
            break;
          case 406: //Not Acceptable
            strStatusCode = ' No es aceptado.';
            break;
          case 412: //Precondition Failed
            strStatusCode = ' Condición previa falló.';
            break;
          case 415: //Unsupported Media Type
            strStatusCode = ' Tipo de medio no soportado.';
            break;
          case 500: //Internal Server Error
            strStatusCode = ' Error interno.';
            break;
          case 501: //Not Implemented
            strStatusCode = ' No reconoce el requerimiento.';
            break;
          default:
        }
        mensajeErr = 'Ocurrió un error en el servidor.' + strStatusCode + ' 🙄';
      }
    } on SocketException {
      mensajeErr = 'No hay conexión con internet 😑';
    } on HttpException {
      mensajeErr = 'No se puede encontrar método en el servicio ☹️';
    } on FormatException {
      mensajeErr = 'Respuesta en formato incorrecto 👎';
    } on NullThrownError {
      mensajeErr =
          'No se recibió respuesta del servidor. Por favor, intente de nuevo.';
    } catch (e) {
      mensajeErr =
          'Ocurrió un error al querer contactar el servidor. Por favor, intente de nuevo. \nError: ${e.toString()}';
    }

    return rpMap;
  }


  String cadenaExcepcion(String ex) {
    return ex is HttpException
        ? 'No se pudo contactar al servidor.'
        : 'Exception: ${ex.toString()}';
  }
}