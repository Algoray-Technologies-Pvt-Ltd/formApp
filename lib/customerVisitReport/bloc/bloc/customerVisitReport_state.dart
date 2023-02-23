// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'customerVisitReport_bloc.dart';

class CustomerVisitReportState extends Equatable {
  CustomerVisitReport? customerVisitReport;
  CustomerVisitReportState({
    this.customerVisitReport,
  });

  @override
  List get props => [customerVisitReport];

  CustomerVisitReportState copyWith({
    CustomerVisitReport? customerVisitReport,
  }) {
    return CustomerVisitReportState(
      customerVisitReport: customerVisitReport ?? this.customerVisitReport,
    );
  }
}
