// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'enquiry_cum_quatation_bloc.dart';

class EnquiryCumQuatationState extends Equatable {
  EnquiryCumQuatation? enquiryCumQuatation;
  List<LedgerMasterHiveModel>? allLedger;
  List<InventoryItemHive>? allItems;
  EnquiryCumQuatationState(
      {this.enquiryCumQuatation, this.allLedger, this.allItems});
  @override
  List get props => [enquiryCumQuatation, allLedger, allItems];

  EnquiryCumQuatationState copyWith(
      {EnquiryCumQuatation? enquiryCumQuatation,
      List<InventoryItemHive>? allItems,
      List<LedgerMasterHiveModel>? allLedger}) {
    return EnquiryCumQuatationState(
        enquiryCumQuatation: enquiryCumQuatation ?? this.enquiryCumQuatation,
        allItems: allItems ?? this.allItems,
        allLedger: allLedger ?? this.allLedger);
  }
}
