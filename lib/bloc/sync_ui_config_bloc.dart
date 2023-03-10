


import 'package:bloc/bloc.dart';

import 'package:equatable/equatable.dart';


part 'sync_ui_config_event.dart';
part 'sync_ui_config_state.dart';

class SyncServiceBloc extends Bloc<SyncServiceEvent, SyncServiceState> {
  SyncServiceBloc()
      : super(SyncServiceState(
          status: SyncUiConfigStatus.init,
        )) {
    on<FetchItemsEvent>((event, emit) async {
      bool n = await syncItems();
      print('Items Fetched');
    });
    on<FetchItemGroupsEvent>((event, emit) async {
      bool n = await syncItemGroups();
      print('Groups Fetched');
    });
    on<FetchLedgersEvent>((event, emit) async {
      await syncLedgers();
    });
    on<FetchAccGroupsEvent>((event, emit) async {
      await syncAccGroups();
    });
    on<FetchUOMEvent>((event, emit) async {
      await syncUOMs();
    });
    on<FetchEmployeesEvent>((event, emit) async {
      await syncEmployees();
      await syncUserGroups();
    });
    on<FetchGodownsEvent>((event, emit) async {
      await syncGodowns();
    });
    on<FetchAllMastersEvent>((event, emit) async {
      await syncItems();
      await syncItemGroups();
      await syncGodowns();
      await syncLedgers();
      await syncAccGroups();
      await syncUOMs();
      await syncEmployees();
      await syncUserGroups();
    });

    on<FetchUIConfigEvent>((event, emit) async {
      print('Sync Event');
      Box box = Hive.box(HiveTagNames.UI_Config_Hive_Tag);
      emit(state.copyWith(status: SyncUiConfigStatus.fetching));
      final List data = await WebservicePHPHelper.getUIConfig();
      // final String response = await rootBundle.loadString('assets/ui.json');
      // List data = await json.decode(d);
      // print('UI Config : ${data.runtimeType} - ${data.length}');
      emit(state.copyWith(status: SyncUiConfigStatus.fetched));
      int k = 0;
      try {
        k = await insertElems(data, box);
        print(' k is $k');

        print('k count :  box :${box.length}');
      } catch (e) {
        print('Error : $e');
      }

      emit(state.copyWith(
          status: SyncUiConfigStatus.updated, msg: 'Updated $k '));

      print('UI CON Len : ${box.length}');
    });
  }

  Future<int> insertElems(List data, Box<dynamic> box) async {
    int k = 0;

    List fs = [];

    data.forEach((element) {
      // print('$k : ${element['id']}');
      box.put(element['id'], element);

      k++;
      // if (element['filters'] != null) {
      //   Map f = jsonDecode(element['filters']);
      //   fs.addAll(jsonDecode(f['dateTime']));
      // }
    });
    // print('Loop done');
    // fs = fs.toSet().toList();

    // print('returning >>> $fs');
    return k;
  }

  Future<bool> syncItems() async {
    print('Fetching Inventory items');
    bool flag = false;
    String qry = "";
    DateTime last = DateTime(2021);
    final dataResponse = await WebservicePHPHelper.getAllInventoryItems(
      lastUpdatedTimestamp: last,
    );
    if (dataResponse == false) {
      print('Fetch Eroor');
    }
    Box<InventoryItemHive> box = Hive.box(HiveTagNames.Items_Hive_Tag);
    await box.clear();
    // print('Items lenngth : ${dataResponse.length}');
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

  Future<bool> syncItemGroups() async {
    print('Fetching item Groups');
    bool flag = false;
    String qry = "";
    DateTime last = DateTime(2021);
    final dataResponse = await WebservicePHPHelper.getAllInventoryGroups(
      lastUpdated: last,
    );
    if (dataResponse == false) {
      print('Fetch Eroor');
    }
    Box<InventorygroupHiveModel> box =
        Hive.box(HiveTagNames.ItemGroups_Hive_Tag);
    await box.clear();
    // print('Box cleared');
    try {
      dataResponse.forEach((element) async {
        // print('${element}');
        InventorygroupHiveModel group =
            InventorygroupHiveModel.fromMap(element);
        await box.put(element['Group_Id'], group);
      });
    } catch (e) {
      print('Error Adding to Hive : ${e.toString()}');
    }

    print('Groups : ${box.length}');
    return flag;
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
      // print('Box cleared');
      dataResponse.forEach((element) async {
        // print('${element['Ledger_Name']}');
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

  Future<bool> syncEmployees() async {
    print('Fetching Emps');
    bool flag = false;

    DateTime last = DateTime(2021);
    final dataResponse = await WebservicePHPHelper.getAllEmployees(
      lastUpdated: last,
    );
    if (dataResponse == false) {
      print('Fetch Eroor');
    }
    Box<EmployeeHiveModel> box = Hive.box(HiveTagNames.Employee_Hive_Tag);
    await box.clear();
    // print('Box cleared');
    try {
      dataResponse.forEach((element) async {
        // print('${element}');
        EmployeeHiveModel emp = EmployeeHiveModel.fromMap(element);
        await box.put(int.parse(element['_id'] ?? "0"), emp);
      });
    } catch (e) {
      print('Error Adding to Hive : ${e.toString()}');
    }

    print('Emps : ${box.length}');

    return flag;
  }

  Future<bool> syncUserGroups() async {
    print('Fetching Emps');
    bool flag = false;

    DateTime last = DateTime(2021);
    final dataResponse = await WebservicePHPHelper.getAllUserGroups(
      lastUpdated: last,
    );
    if (dataResponse == false) {
      print('Fetch Eroor');
    }
    Box<UserGroupDataModel> box = Hive.box(HiveTagNames.UserGroups_Hive_Tag);
    await box.clear();
    // print('Box cleared');
    try {
      dataResponse.forEach((element) async {
        // print('${element}');
        UserGroupDataModel emp = UserGroupDataModel.fromMap(element);
        await box.put(int.parse(element['_id'] ?? "0"), emp);
      });
    } catch (e) {
      print('Error Adding to Hive : ${e.toString()}');
    }

    print('UserGroups : ${box.length}');

    return flag;
  }

  Future<bool> syncGodowns() async {
    print('Fetching Godowns');
    bool flag = false;
    String qry = "";
    DateTime last = DateTime(2021);
    final dataResponse = await WebservicePHPHelper.getAllGodowns(
      lastUpdated: last,
    );
    if (dataResponse == false) {
      print('Fetch Eroor - GODOWNS');
      return false;
    }
    Box<GodownHiveModel> box = Hive.box(HiveTagNames.Godowns_Hive_Tag);
    await box.clear();
    // print('Box cleared');
    try {
      dataResponse.forEach((element) async {
        // print('${element}');
        GodownHiveModel godownObj = GodownHiveModel.fromMap(element);
        await box.put(element['Godown_ID'], godownObj);
      });
    } catch (e) {
      print('Error Adding to Hive : ${e.toString()}');
    }

    print('Godowns  : ${box.length}');
    return flag;
  }

  Future<bool> syncUOMs() async {
    print('Fetching uo');
    bool flag = false;
    String qry = "";
    DateTime last = DateTime(2021);
    final dataResponse = await WebservicePHPHelper.getAllUOM(
      lastUpdated: last,
    );
    if (dataResponse == false) {
      print('Fetch Eroor');
    } else {
      // print('uom');
      // print(dataResponse.runtimeType);
    }
    Box<UOMHiveMOdel> box = Hive.box(HiveTagNames.Uom_Hive_Tag);
    await box.clear();
    print('UOM Box cleared');
    try {
      dataResponse.forEach((element) async {
        // print('${element}');
        UOMHiveMOdel uom = UOMHiveMOdel.fromMap(element);
        // print('Uom $uom');
        await box.put(int.parse(element['Uom_id']), uom);
      });
    } catch (e) {
      print('Error Adding to Hive : ${e.toString()}');
    }
    print('Uoms : ${box.length}');
    return flag;
  }

  Future<bool> syncAccGroups() async {
    print('Fetching accGrps');
    bool flag = false;
    String qry = "";
    DateTime last = DateTime(2021);
    final dataResponse = await WebservicePHPHelper.getAccountgroups(
      lastUpdated: last,
    );
    if (dataResponse == false) {
      print('Fetch Eroor');
    } else {
      // print("acc Grps : $dataResponse");
    }
    Box<AccountGroupHiveModel> box =
        Hive.box(HiveTagNames.AccountGroups_Hive_Tag);
    await box.clear();
    print('Box cleared');
    try {
      dataResponse.forEach((element) async {
        // print('${element}');
        AccountGroupHiveModel acc = AccountGroupHiveModel.fromMap(element);
        await box.put(element['Group_Id'], acc);
      });
    } catch (e) {
      print('Error Adding to Hive : ${e.toString()}');
    }

    print('Acc Grps : ${box.length}');
    return flag;
  }

  Future<bool> syncPrices() async {
    bool flag = false;
    String qry = "";
    DateTime last = DateTime(2021);
    final List dataResponse =
        await WebservicePHPHelper.getAllPriceList(lastUpdated: last);
    Box box = Hive.box(HiveTagNames.PriceLists_Hive_Tag);
    box.clear();

    dataResponse.forEach((element) async {
      // print('${element}');
      await box.put(element['Item_ID'], element);
    });
    print('Items : ${box.length}');
    return flag;
  }
}