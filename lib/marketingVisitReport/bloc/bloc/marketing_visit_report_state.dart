// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'marketing_visit_report_bloc.dart';

class MarketingVisitReportState extends Equatable {
  MarketingVisitReport? marketingVisitReport;
  List<LedgerMasterHiveModel>? allledger;
  MarketingVisitReportState({this.marketingVisitReport, this.allledger});
  @override
  List get props => [marketingVisitReport];

  MarketingVisitReportState copyWith(
      {MarketingVisitReport? marketingVisitReport,
      List<LedgerMasterHiveModel>? allledger}) {
    return MarketingVisitReportState(
        marketingVisitReport: marketingVisitReport ?? this.marketingVisitReport,
        allledger: allledger ?? this.allledger);
  }
}
