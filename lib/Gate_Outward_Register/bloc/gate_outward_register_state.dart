// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'gate_outward_register_bloc.dart';

class GateOutwardRegisterState extends Equatable {
  GateOutWardRegisterModel? gateOutwardRegisterModel;
  Status? status;
  List<InventoryItemHive>? allItems;
  List<EmployeeHiveModel>? allEmployees;


  GateOutwardRegisterState({this.gateOutwardRegisterModel, this.status,this.allItems,this.allEmployees});

  @override
  List<Object?> get props => [gateOutwardRegisterModel, status,allItems,allEmployees];

  GateOutwardRegisterState copyWith({
    GateOutWardRegisterModel? gateOutwardRegisterModel,
    Status? status,
      List<InventoryItemHive>? allItems,
  List<EmployeeHiveModel>? allEmployees,
  }) {
    return GateOutwardRegisterState(
      gateOutwardRegisterModel:
          gateOutwardRegisterModel ?? this.gateOutwardRegisterModel,
      status: status ?? this.status,
      allItems: allItems ?? this.allItems,
      allEmployees: allEmployees ?? this.allEmployees,
    );
  }
}
