import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:formapp/constants.dart';
import 'package:formapp/model/HiveModels/InventoryItems/InvetoryItemDataModel.dart';
import 'package:formapp/model/Ledgers/LedMasterHiveModel.dart';
import 'package:hive_flutter/hive_flutter.dart';
import '../webService/webServicePHP.dart';
part 'sync_ui_config_event.dart';
part 'sync_ui_config_state.dart';

class SyncServiceBloc extends Bloc<SyncServiceEvent, SyncServiceState> {
  SyncServiceBloc()
      : super(const SyncServiceState(
          status: SyncUiConfigStatus.init,
        )) {
    on<FetchLedgersEvent>((event, emit) async {
      log('Hi bloc');
      await syncLedgers();
    });
    on<FetchItemsEvent>((event, emit) async {
      await syncItems();
      print('Items Fetched');
    });
  }
}

Future<bool> syncLedgers() async {
  print('Fetching Leds');
  bool flag = false;
  String qry = "";
  DateTime last = DateTime(2021);
  final dataResponse = await WebServicePHPHelper.getAllLedgers(
    lastUpdated: last,
  );
  if (dataResponse == false) {
    print('Fetch Eroor');
  }
  Box<LedgerMasterHiveModel> box =
      Hive.box<LedgerMasterHiveModel>(HiveTagNames.Ledgers_Hive_Tag);
  try {
    await box.clear();
    dataResponse.forEach((element) async {
      LedgerMasterHiveModel ledger = LedgerMasterHiveModel.fromMap(element);
      print(element);
      await box.put(element['Ledger_Id'], ledger);
    });
  } catch (e) {
    print('Error Adding to Hive : ${e.toString()}');
  } finally {
    print('Ledgers : ${box.length}');
  }

  return flag;
}

Future<bool> syncItems() async {
  print('fetching inventory items');
  bool flag = false;
  String qry = '';
  DateTime last = DateTime(2021);

  final dataResponse = await WebServicePHPHelper.getAllInventoryItems(
    lastUpdatedTimestamp: last,
  );
  if (dataResponse == false) {
    print('Fetch Error');
  }
  Box<InventoryItemHive> box = Hive.box(HiveTagNames.Items_Hive_Tag);
  await box.clear();

  try {
    dataResponse.forEach((element) async {
      // print('${element}');
      try {
        // print('Type ele : ${element.runtimeType}');
        InventoryItemHive item = InventoryItemHive.fromMap(element);
        await box.put(item.Item_ID, item);
      } catch (e) {
        print('Conv error : ${e.toString()}');
      }
    });
  } catch (e) {
    print('Erro : ${e.toString()}  ${box.getAt(0)}');
  }
  print('Inventory Items FETCHED : ${box.length}');
  return flag;
}
