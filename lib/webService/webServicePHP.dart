import 'dart:math';

import 'package:dio/dio.dart';
import 'package:hive/hive.dart';
import 'package:intl/intl.dart';

class WebServicePHPHelper {
  static Future<dynamic> getAllEmployees({DateTime? lastUpdated}) async {
    final DateFormat formatter = DateFormat('yyyy-MM-dd HH:mm:ss');
    String dateF = formatter.format(lastUpdated!);
    String fullURl =
        "https://www.algoray.in/test_app_water/masters_webservice.php?action=getAllEmployees";

    print('Url : $fullURl');
    dynamic data;
    try {
      String dBName = "cake_studio_ho";
      Dio dio = Dio(BaseOptions(headers: {'dbname': dBName}));
      final Response response = await dio.get(
        fullURl,
      );

      data = response.data;
    } catch (ex) {
      print(ex.toString());
      return false;
    }
    if (data['success'] == "1")
      return data['data'];
    else
      return false;
  }

  static Future<dynamic> getAllLedgers({DateTime? lastUpdated}) async {
    final DateFormat formatter = DateFormat('yyyy-MM-dd HH:mm:ss');
    String dateF = formatter.format(lastUpdated!);
    String fullURl =
        "https://www.algoray.in/test_app_water/ledger_webservice.php?action=getAllLedgersNew"; //&timestamp=$dateF

    print('Url for Led : $fullURl');
    dynamic data;
    Response? response;
    try {
      String dBName = "cake_studio_ho";
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
      print("****" + ex.toString());
      return false;
    }
    if (data['success'] == "1")
      return data['data'];
    else
      return false;
  }

  static Future<dynamic> getAllInventoryItems(
      {required DateTime lastUpdatedTimestamp}) async {
    print('DT : $lastUpdatedTimestamp');
    final DateFormat formatter = DateFormat('yyyy-MM-dd HH:mm:ss');
    String dateF = formatter.format(lastUpdatedTimestamp);
    String fullURl =
        "https://www.algoray.in/test_app_water/inventory_webservice.php?action=getAllItemsNew&timestamp=$dateF&offset=0&limit=10000";

    print('Url : $fullURl');
    print('123');
    dynamic data;
    Response? response;
    try {
      String dBName = "cake_studio_ho";
      // Hive.box('settings').get('DBName');
      Dio dio = Dio(); //BaseOptions(headers: {'dbname': dBName}));
      dio.options.headers['dbname'] = dBName;
      dio.options.headers['Content-Type'] = 'application/json';
      response = await dio.get(
        fullURl,
        // headers: {"Accept": "application/json"},
      );
      // data = json.decode(response.body);
      // print(response.data);
      data = response.data;
      // print('allitems ${data['data']}');
    } catch (ex) {
      print('Inventory Error');
      print('Inventory Error Status ${response?.statusCode}');
      print(ex.toString());
      return false;
    }
    if (data['success'] == 1 || data['success'] == '1')
      return data['data'];
    else
      return false;
  }
}
