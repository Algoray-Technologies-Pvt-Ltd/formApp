// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'marketing_visit_report_bloc.dart';

class MarketingVisitReportState extends Equatable {
  MarketingVisitReport? marketingVisitReport;
  List<LedgerMasterHiveModel>? allledger;
  List<EmployeeHiveModel>? allEmloyees;
  MarketingVisitReportState(
      {this.marketingVisitReport, this.allledger, this.allEmloyees});
  @override
  List get props => [marketingVisitReport, allEmloyees, allledger];

  MarketingVisitReportState copyWith(
      {MarketingVisitReport? marketingVisitReport,
      List<EmployeeHiveModel>? allEmloyees,
      List<LedgerMasterHiveModel>? allledger}) {
    return MarketingVisitReportState(
        marketingVisitReport: marketingVisitReport ?? this.marketingVisitReport,
        allEmloyees: allEmloyees ?? this.allEmloyees,
        allledger: allledger ?? this.allledger);
  }
}
