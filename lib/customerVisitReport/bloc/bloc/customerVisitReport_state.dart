// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'customerVisitReport_bloc.dart';

class CustomerVisitReportState extends Equatable {
  CustomerVisitReport? customerVisitReport;
  List<LedgerMasterHiveModel>? allledger;
  List<EmployeeHiveModel>? allEmloyees;
  CustomerVisitReportState(
      {this.customerVisitReport, this.allledger, this.allEmloyees});

  @override
  List get props => [customerVisitReport, allledger, allEmloyees];

  CustomerVisitReportState copyWith(
      {CustomerVisitReport? customerVisitReport,
      List<LedgerMasterHiveModel>? allledger,
      List<EmployeeHiveModel>? allEmloyees}) {
    return CustomerVisitReportState(
        customerVisitReport: customerVisitReport ?? this.customerVisitReport,
        allEmloyees: allEmloyees ?? this.allEmloyees,
        allledger: allledger ?? this.allledger);
  }
}
