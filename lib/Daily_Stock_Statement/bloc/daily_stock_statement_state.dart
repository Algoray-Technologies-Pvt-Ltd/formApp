// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'daily_stock_statement_bloc.dart';

class DailyStockStatementState extends Equatable {
  DailyStockStatementModel? dailyStockStatementModel;
  Status? status;
  List<InventoryItemHive>? allItems;

  DailyStockStatementState(
      {this.dailyStockStatementModel, this.status, this.allItems});

  @override
  List<Object?> get props => [dailyStockStatementModel, status, allItems];

  DailyStockStatementState copyWith(
      {DailyStockStatementModel? dailyStockStatementModel,
      Status? status,
      List<InventoryItemHive>? allItems}) {
    return DailyStockStatementState(
        dailyStockStatementModel:
            dailyStockStatementModel ?? this.dailyStockStatementModel,
        status: status ?? this.status,
        allItems: allItems ?? this.allItems);
  }
}
