// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'marketing_visit_report_bloc.dart';

class MarketingVisitReportState extends Equatable {
  MarketingVisitReport? marketingVisitReport;
  MarketingVisitReportState({
    this.marketingVisitReport,
  });
  @override
  List get props => [marketingVisitReport];

  MarketingVisitReportState copyWith({
    MarketingVisitReport? marketingVisitReport,
  }) {
    return MarketingVisitReportState(
      marketingVisitReport: marketingVisitReport ?? this.marketingVisitReport,
    );
  }
}
