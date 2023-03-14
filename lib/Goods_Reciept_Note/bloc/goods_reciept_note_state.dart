// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'goods_reciept_note_bloc.dart';

class GoodsRecieptNoteState extends Equatable {
  GoodsRecieptNoteModel? grnModel;
  Status? status;
  List<InventoryItemHive>? allItems;

  GoodsRecieptNoteState({this.grnModel, this.status, this.allItems});

  @override
  List<Object?> get props => [grnModel, status, allItems];

  GoodsRecieptNoteState copyWith(
      {GoodsRecieptNoteModel? grnModel,
      Status? status,
      List<InventoryItemHive>? allItems}) {
    return GoodsRecieptNoteState(
      grnModel: grnModel ?? this.grnModel,
      status: status ?? this.status,
      allItems: allItems ?? this.allItems
    );
  }
}
