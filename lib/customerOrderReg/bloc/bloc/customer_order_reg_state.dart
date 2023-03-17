// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'customer_order_reg_bloc.dart';

class CustomerOrderRegState extends Equatable {
  CustomerOrderReg? customerOrderReg;
  List<LedgerMasterHiveModel>? allLedger;
  List<EmployeeHiveModel>? allEmloyees;
  List<InventoryItemHive>? allitems;

  CustomerOrderRegState(
      {this.customerOrderReg, this.allEmloyees, this.allLedger, this.allitems});
  @override
  List get props => [customerOrderReg, allEmloyees, allLedger, allitems];

  CustomerOrderRegState copyWith(
      {CustomerOrderReg? customerOrderReg,
      List<InventoryItemHive>? allitems,
      List<LedgerMasterHiveModel>? allLedger,
      List<EmployeeHiveModel>? allEmloyees}) {
    return CustomerOrderRegState(
        customerOrderReg: customerOrderReg ?? this.customerOrderReg,
        allitems: allitems ?? this.allitems,
        allEmloyees: allEmloyees ?? this.allEmloyees,
        allLedger: allLedger ?? this.allLedger);
  }
}
