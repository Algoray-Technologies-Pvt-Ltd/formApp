import 'package:bloc/bloc.dart';

import 'package:equatable/equatable.dart';
import 'package:formapp/constants.dart';
import 'package:formapp/model/Ledgers/LedMasterHiveModel.dart';
import 'package:formapp/webService/servises.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'sync_ui_config_event.dart';
part 'sync_ui_config_state.dart';

class SyncServiceBloc extends Bloc<SyncServiceEvent, SyncServiceState> {
  SyncServiceBloc()
      : super(SyncServiceState(
          status: SyncUiConfigStatus.init,
        )) {
    on<FetchLedgersEvent>((event, emit) async {
      await syncLedgers();
    });
  }
}

Future<bool> syncLedgers() async {
  print('Fetching Leds');
  bool flag = false;
  String qry = "";
  DateTime last = DateTime(2021);
  final dataResponse = await WebservicePHPHelper.getAllLedgers(
    lastUpdated: last,
  );
  if (dataResponse == false) {
    print('Fetch Eroor');
  }
  Box<LedgerMasterHiveModel> box = Hive.box(HiveTagNames.Ledgers_Hive_Tag);
  try {
    await box.clear();
    dataResponse.forEach((element) async {
      LedgerMasterHiveModel ledger = LedgerMasterHiveModel.fromMap(element);
      await box.put(element['Ledger_Id'], ledger);
    });
  } catch (e) {
    print('Error Adding to Hive : ${e.toString()}');
  } finally {
    print('Ledgers : ${box.length}');
  }

  return flag;
}
