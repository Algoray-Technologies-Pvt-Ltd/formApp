// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'gate_inward_register_bloc.dart';

class GateInwardRegisterState extends Equatable {
  GateInwardRegisterModel? gateInwardRegisterModel;
  Status? status;
  List<InventoryItemHive>? allItems;
  GateInwardRegisterState(
      {this.gateInwardRegisterModel, this.status, this.allItems});

  @override
  List<Object?> get props => [gateInwardRegisterModel, status, allItems];

  GateInwardRegisterState copyWith(
      {GateInwardRegisterModel? gateInwardRegisterModel,
      Status? status,
      List<InventoryItemHive>? allItems}) {
    return GateInwardRegisterState(
      gateInwardRegisterModel:
          gateInwardRegisterModel ?? this.gateInwardRegisterModel,
      status: status ?? this.status,
      allItems: allItems ?? this.allItems
    );
  }
}
