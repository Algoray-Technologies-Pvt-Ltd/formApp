// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 're_order_level_chart_bloc.dart';

class ReOrderLevelChartState extends Equatable {
  ReorderLevelModel? reorderLevelModel;
  Status? status;
  List<InventoryItemHive>? allItems;

  ReOrderLevelChartState({this.reorderLevelModel, this.status, this.allItems});

  @override
  List<Object?> get props => [reorderLevelModel, status, allItems];

  ReOrderLevelChartState copyWith({
    ReorderLevelModel? reorderLevelModel,
    Status? status,
    List<InventoryItemHive>? allItems,
  }) {
    return ReOrderLevelChartState(
        reorderLevelModel: reorderLevelModel ?? this.reorderLevelModel,
        status: status ?? this.status,
        allItems: allItems ?? this.allItems);
  }
}
