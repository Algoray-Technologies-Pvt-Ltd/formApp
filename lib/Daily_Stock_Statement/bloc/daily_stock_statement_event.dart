// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'daily_stock_statement_bloc.dart';

class DailyStockStatementEvent extends Equatable {
  const DailyStockStatementEvent();

  @override
  List<Object> get props => [];
}

class FtNumberEvent extends DailyStockStatementEvent {
  String ftNumber;
  FtNumberEvent({
    required this.ftNumber,
  });
}

class RevNumberEvent extends DailyStockStatementEvent {
  String revNumber;
  RevNumberEvent({
    required this.revNumber,
  });
}

class MDateEvent extends DailyStockStatementEvent {
  DateTime mDate;
  MDateEvent({
    required this.mDate,
  });
}

class PageNumberEvent extends DailyStockStatementEvent {
  String pageNumber;
  PageNumberEvent({
    required this.pageNumber,
  });
}

class StockDateEvent extends DailyStockStatementEvent {
  DateTime stockDate;
  StockDateEvent({
    required this.stockDate,
  });
}

class SlNumberEvent extends DailyStockStatementEvent {
  String slNumber;
  SlNumberEvent({
    required this.slNumber,
  });
}

class DescriptionEvent extends DailyStockStatementEvent {
  String description;
  DescriptionEvent({
    required this.description,
  });
}

class OpeningStockEvent extends DailyStockStatementEvent {
  int openingStock;
  OpeningStockEvent({
    required this.openingStock,
  });
}

class PurchaseStockEvent extends DailyStockStatementEvent {
  int purchaseStock;
  PurchaseStockEvent({
    required this.purchaseStock,
  });
}

class TotalStockEvent extends DailyStockStatementEvent {
  int totalStock;
  TotalStockEvent({
    required this.totalStock,
  });
}

class StockIssueEvent extends DailyStockStatementEvent {
  int stockIssue;
  StockIssueEvent({
    required this.stockIssue,
  });
}

class ClosingStockEvent extends DailyStockStatementEvent {
  int closingStock;
  ClosingStockEvent({
    required this.closingStock,
  });
}

class RemarksEvent extends DailyStockStatementEvent {
  String remarks;
  RemarksEvent({
    required this.remarks,
  });
}

class FetchingEvent extends DailyStockStatementEvent{}

class SaveEvent extends DailyStockStatementEvent{}

