// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'customer_complaint_reg_bloc.dart';

class CustomerComplaintRegState extends Equatable {
  CustomerComplaintReg? customerComplaintReg;
  CustomerComplaintRegState({
    this.customerComplaintReg,
  });
  @override
  List get props => [customerComplaintReg];

  CustomerComplaintRegState copyWith({
    CustomerComplaintReg? customerComplaintReg,
  }) {
    return CustomerComplaintRegState(
      customerComplaintReg: customerComplaintReg ?? this.customerComplaintReg,
    );
  }
}
