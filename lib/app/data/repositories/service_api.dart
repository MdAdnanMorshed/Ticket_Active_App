

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

class ServiceAPI {

  static String baseUrl='http://apps.babuland.org/bblapi/babuland/v1/';

  /// Task 03
  Future getApiTicketMS() async {
    Uri url = Uri.parse('${baseUrl}mock_ticket_ms?MOBILE_NUMBER=01717956094');

    try {
      final response = await http.get(url, headers: {
        "Accept": "application/json",
      });
      if (kDebugMode) {
        print(' url  $url');
        print(' Status Code ${response.statusCode.toString()}');
        print(' res  ${response.body.toString()}');
      }
      return response;
    } on Exception catch (exception) {
      rethrow;
    } catch (error) {
      throw Exception(error);
    }
  }

  /// Task 04
  Future getApiTicketDT() async {
    Uri url = Uri.parse('${baseUrl}mock_ticket_dt?ORDER_ID=94400');

    try {
      final response = await http.get(url, headers: {
        "Accept": "application/json",
      });
      if (kDebugMode) {
        print(' url  $url');
        print(' Status Code ${response.statusCode.toString()}');
        print(' res  ${response.body.toString()}');
      }
      return response;
    } on Exception catch (exception) {
      rethrow;
    } catch (error) {
      throw Exception(error);
    }
  }

}
