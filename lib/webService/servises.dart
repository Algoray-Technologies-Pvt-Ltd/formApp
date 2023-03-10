import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:hive/hive.dart';
import 'package:intl/intl.dart';

class WebservicePHPHelper {
  static String getBaseURL() {
    Box sett = Hive.box('settings');
    String url = sett.get('url');
    // String url = 'http://192.168.0.210/test_app';

    // String url = 'https://www.algoray.in/test_app_water';

    // String url = 'https://www.switch1.org/test_app_water';
    // print('Url : $url/');
    return '$url/';
  }

  static String getDBName() {
    Box settings = Hive.box('settings');

    // return 'zelebrae2';

    return settings.get('DBName', defaultValue: 'gmtest');
  }


  static Future<dynamic> getAllLedgers({DateTime? lastUpdated}) async {
    final DateFormat formatter = DateFormat('yyyy-MM-dd HH:mm:ss');
    String dateF = formatter.format(lastUpdated!);
    String fullURl =
        "${getBaseURL()}ledger_webservice.php?action=getAllLedgersNew"; //&timestamp=$dateF

    print('Url for Led : $fullURl');
    dynamic data;
    Response? response;
    try {
      String dBName = getDBName();
      // Hive.box('settings').get('DBName');
      Dio dio = Dio(); //BaseOptions(headers: {'dbname': dBName}));
      dio.options.headers['dbname'] = dBName;
      response = await dio.get(
        fullURl,
        // headers: {"Accept": "application/json"},
      );

      print('DBNAMe : $dBName');

      // data = json.decode(response.body);
      print('doen');
      data = response.data;
      // print('led data (from Webservice) : $data');
    } catch (ex) {
      print('Ledgers Error $fullURl');
      print(ex.toString());
      return false;
    }
    if (data['success'] == "1")
      return data['data'];
    else
      return false;
  }
}
