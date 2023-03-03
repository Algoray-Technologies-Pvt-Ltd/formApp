// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'daily_stock_statement_bloc.dart';

class DailyStockStatementState extends Equatable {
  DailyStockStatementModel? dailyStockStatementModel;
  Status? status;
  DailyStockStatementState({
    this.dailyStockStatementModel,
    this.status,
  });

  @override
  List<Object?> get props => [dailyStockStatementModel, status];

  DailyStockStatementState copyWith({
    DailyStockStatementModel? dailyStockStatementModel,
    Status? status,
  }) {
    return DailyStockStatementState(
        dailyStockStatementModel:
            dailyStockStatementModel ?? this.dailyStockStatementModel,
        status: status ?? this.status);
  }
}
