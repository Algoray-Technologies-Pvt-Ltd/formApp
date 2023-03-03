import 'dart:convert';
import 'dart:developer';

import 'package:formapp/model/allLedgerModel.dart';
import 'package:http/http.dart' as http;

allLedgers() async {
  print("weServicestart");
  var url = Uri.parse(
      "https://www.algoray.in/test_app_water/ledger_webservice.php?action=getAllLedgersNew");
  try {
    print("weServicetry");
    var response = await http.get(url, headers: {"dbname": "cake_studio_ho"});
    print('api call started');
    if (response.statusCode == 200) {
      log('api call 200');
      final result = jsonDecode(response.body);
      var finalresult = AllLedgers.fromJson((result));

      print(finalresult);
      log('api call ok');
      return finalresult.data;
    } else {
      log('api call ok alla');
      throw Exception(response.reasonPhrase);
    }
  } catch (e) {
    print(e);
  }
}
