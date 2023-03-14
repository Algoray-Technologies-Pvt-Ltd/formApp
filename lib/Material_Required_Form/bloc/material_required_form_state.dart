// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'material_required_form_bloc.dart';

class MaterialRequiredFormState extends Equatable {
  MaterialrequiredFormModel? materialrequiredFormModel;
  Status? status;
  List<LedgerMasterHiveModel>? allledger;
  List<InventoryItemHive>? allItems;
  List<EmployeeHiveModel>? allEmployees;

  MaterialRequiredFormState(
      {this.materialrequiredFormModel,
      this.status,
      this.allledger,
      this.allItems,
      this.allEmployees});

  @override
  List<Object?> get props =>
      [materialrequiredFormModel, status, allledger, allItems,allEmployees];

  MaterialRequiredFormState copyWith({
    MaterialrequiredFormModel? materialrequiredFormModel,
    Status? status,
    List<LedgerMasterHiveModel>? allledger,
    List<InventoryItemHive>? allItems,
  List<EmployeeHiveModel>? allEmployees,

  }) {
    return MaterialRequiredFormState(
      materialrequiredFormModel:
          materialrequiredFormModel ?? this.materialrequiredFormModel,
      status: status ?? this.status,
      allledger: allledger ?? this.allledger,
      allItems: allItems ?? this.allItems,
      allEmployees: allEmployees ?? this.allEmployees,
    );
  }
}
