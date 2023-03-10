import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:formapp/webService/webServicePHP.dart';
import 'package:hive/hive.dart';

import '../../constants.dart';
import '../../model/HiveModels/InventoryItems/InventoryItemDataModel.dart';
import '../../status.dart';
import '../models/dailyStockStatementModel.dart';

part 'daily_stock_statement_event.dart';
part 'daily_stock_statement_state.dart';

class DailyStockStatementBloc
    extends Bloc<DailyStockStatementEvent, DailyStockStatementState> {
  DailyStockStatementBloc()
      : super(DailyStockStatementState(
            status: Status.init,
            dailyStockStatementModel: DailyStockStatementModel())) {
    on<FtNumberEvent>((event, emit) {
      emit(state.copyWith(
          dailyStockStatementModel: state.dailyStockStatementModel
              ?.copyWith(ftNumber: event.ftNumber)));
    });
    on<RevNumberEvent>((event, emit) {
      emit(state.copyWith(
          dailyStockStatementModel: state.dailyStockStatementModel
              ?.copyWith(revNumber: event.revNumber)));
    });
    on<MDateEvent>((event, emit) {
      emit(state.copyWith(
          dailyStockStatementModel:
              state.dailyStockStatementModel?.copyWith(date: event.mDate)));
    });
    on<PageNumberEvent>((event, emit) {
      emit(state.copyWith(
          dailyStockStatementModel: state.dailyStockStatementModel
              ?.copyWith(pageNumber: event.pageNumber)));
    });
    on<StockDateEvent>((event, emit) {
      emit(state.copyWith(
          dailyStockStatementModel: state.dailyStockStatementModel
              ?.copyWith(stockDate: event.stockDate)));
    });
    on<SlNumberEvent>((event, emit) {
      emit(state.copyWith(
          dailyStockStatementModel: state.dailyStockStatementModel
              ?.copyWith(slNumber: event.slNumber)));
    });
    on<DescriptionEvent>((event, emit) async {
      bool n = await fetchItems();
      print('Items Fetched');
      // emit(state.copyWith(
      //     dailyStockStatementModel: state.dailyStockStatementModel
      //         ?.copyWith(description: event.description)));
    });
    on<OpeningStockEvent>((event, emit) {
      emit(state.copyWith(
          dailyStockStatementModel: state.dailyStockStatementModel
              ?.copyWith(openingStock: event.openingStock)));
    });
    on<PurchaseStockEvent>((event, emit) {
      emit(state.copyWith(
          dailyStockStatementModel: state.dailyStockStatementModel
              ?.copyWith(purchase: event.purchaseStock)));
    });
    on<TotalStockEvent>((event, emit) {
      emit(state.copyWith(
          dailyStockStatementModel: state.dailyStockStatementModel
              ?.copyWith(total: event.totalStock)));
    });
    on<StockIssueEvent>((event, emit) {
      emit(state.copyWith(
          dailyStockStatementModel: state.dailyStockStatementModel
              ?.copyWith(issue: event.stockIssue)));
    });
    on<ClosingStockEvent>((event, emit) {
      emit(state.copyWith(
          dailyStockStatementModel: state.dailyStockStatementModel
              ?.copyWith(closingStock: event.closingStock)));
    });
    on<RemarksEvent>((event, emit) {
      emit(state.copyWith(
          dailyStockStatementModel: state.dailyStockStatementModel
              ?.copyWith(remarks: event.remarks)));
    });
    on<SaveEvent>((event, emit) {
      var s = state.dailyStockStatementModel!.toJson();
      print('*************');
      print(s);
      print('*************');
    });
  }
  Future<bool> fetchItems() async {
    print('fetching inventory items');
    bool flag = false;
    String qry = '';
    DateTime last = DateTime(2021);

    final dataResponse = await WebServicePHPHelper.getAllInventoryItems(
      lastUpdatedTimestamp: last,
    );
    if (dataResponse == false) {
      print('Fetch Eroor');
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
}
