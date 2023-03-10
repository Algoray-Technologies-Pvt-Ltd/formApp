// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'customer_complaint_reg_bloc.dart';

class CustomerComplaintRegState extends Equatable {
  CustomerComplaintReg? customerComplaintReg;
  List<LedgerMasterHiveModel>? allledger;
  CustomerComplaintRegState({
    this.customerComplaintReg,
    this.allledger,
  });
  @override
  List get props => [customerComplaintReg, allledger];

  CustomerComplaintRegState copyWith(
      {CustomerComplaintReg? customerComplaintReg,
      List<LedgerMasterHiveModel>? allledger}) {
    return CustomerComplaintRegState(
        customerComplaintReg: customerComplaintReg ?? this.customerComplaintReg,
        allledger: allledger ?? this.allledger);
  }
}
