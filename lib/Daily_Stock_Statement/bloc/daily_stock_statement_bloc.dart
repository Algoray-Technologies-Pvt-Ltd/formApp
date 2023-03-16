import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:formapp/model/HiveModels/InventoryItems/InvetoryItemDataModel.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../../constants.dart';
import '../../model/Ledgers/LedMasterHiveModel.dart';
import '../../status.dart';
import '../models/dailyStockStatementModel.dart';

part 'daily_stock_statement_event.dart';
part 'daily_stock_statement_state.dart';

class DailyStockStatementBloc
    extends Bloc<DailyStockStatementEvent, DailyStockStatementState> {
  DailyStockStatementBloc()
      : super(DailyStockStatementState(
            status: Status.init,
            allItems: [],
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
    on<DescriptionEvent>((event, emit) {
      emit(state.copyWith(
          dailyStockStatementModel: state.dailyStockStatementModel
              ?.copyWith(description: event.description, itemId: event.uid)));

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
    on<FetchingDailyStockEvent>((event, emit) async {
      print('*************###############');
      emit(state.copyWith(status: Status.fetching));
      print('#######################');
      Box<InventoryItemHive> items = Hive.box<InventoryItemHive>(
        HiveTagNames.Items_Hive_Tag,
      );
      var s = items.values.toList();
      items.values.where((element) {
        print('${element.Item_Name} - ${element.Group_Id}}');
        return true;
      }).toList();

      print('#######################');

      emit(state.copyWith(status: Status.ready, allItems: s));
    });
  }
}
