// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'customer_order_reg_bloc.dart';

class CustomerOrderRegState extends Equatable {
  CustomerOrderReg? customerOrderReg;
  List<LedgerMasterHiveModel>? allLedger;
  List<EmployeeHiveModel>? allEmloyees;
  CustomerOrderRegState(
      {this.customerOrderReg, this.allEmloyees, this.allLedger});
  @override
  List get props => [customerOrderReg, allEmloyees, allLedger];

  CustomerOrderRegState copyWith(
      {CustomerOrderReg? customerOrderReg,
      List<LedgerMasterHiveModel>? allLedger,
      List<EmployeeHiveModel>? allEmloyees}) {
    return CustomerOrderRegState(
        customerOrderReg: customerOrderReg ?? this.customerOrderReg,
        allEmloyees: allEmloyees ?? this.allEmloyees,
        allLedger: allLedger ?? this.allLedger);
  }
}
