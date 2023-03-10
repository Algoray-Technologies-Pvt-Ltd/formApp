// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'goods_reciept_note_bloc.dart';

class GoodsRecieptNoteState extends Equatable {
  GoodsRecieptNoteModel? grnModel;
  Status? status;
  GoodsRecieptNoteState({this.grnModel, this.status});

  @override
  List<Object?> get props => [grnModel, status];

  GoodsRecieptNoteState copyWith({
    GoodsRecieptNoteModel? grnModel,
    Status? status,
  }) {
    return GoodsRecieptNoteState(
      grnModel: grnModel ?? this.grnModel,
      status: status ?? this.status,
    );
  }
}
