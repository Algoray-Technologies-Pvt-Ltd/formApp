// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 're_order_level_chart_bloc.dart';

class ReOrderLevelChartState extends Equatable {
  ReorderLevelModel? reorderLevelModel;
  Status? status;
  ReOrderLevelChartState({this.reorderLevelModel, this.status});

  @override
  List<Object?> get props => [reorderLevelModel, status];

  ReOrderLevelChartState copyWith({
    ReorderLevelModel? reorderLevelModel,
    Status? status,
  }) {
    return ReOrderLevelChartState(
      reorderLevelModel: reorderLevelModel ?? this.reorderLevelModel,
      status: status ?? this.status,
    );
  }
}
