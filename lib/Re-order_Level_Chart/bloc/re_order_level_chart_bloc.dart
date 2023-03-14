import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../../constants.dart';
import '../../model/HiveModels/InventoryItems/InvetoryItemDataModel.dart';
import '../../status.dart';
import '../models/reorderLevelModel.dart';

part 're_order_level_chart_event.dart';
part 're_order_level_chart_state.dart';

class ReOrderLevelChartBloc
    extends Bloc<ReOrderLevelChartEvent, ReOrderLevelChartState> {
  ReOrderLevelChartBloc()
      : super(ReOrderLevelChartState(
            reorderLevelModel: ReorderLevelModel(), status: Status.init)) {
    on<FtNumberEvent>((event, emit) {
      emit(state.copyWith(
          reorderLevelModel:
              state.reorderLevelModel?.copyWith(ftNumber: event.ftNumber)));
    });
    on<RevNumberEvent>((event, emit) {
      emit(state.copyWith(
          reorderLevelModel:
              state.reorderLevelModel?.copyWith(revNumber: event.revNumber)));
    });
    on<MDateEvent>((event, emit) {
      emit(state.copyWith(
          reorderLevelModel:
              state.reorderLevelModel?.copyWith(date: event.mDate)));
    });
    on<PageNumberEvent>((event, emit) {
      emit(state.copyWith(
          reorderLevelModel:
              state.reorderLevelModel?.copyWith(pageNumber: event.pageNumber)));
    });
    on<SlNumberEvent>((event, emit) {
      emit(state.copyWith(
          reorderLevelModel:
              state.reorderLevelModel?.copyWith(slNumber: event.slNumber)));
    });
    on<DescriptionEvent>((event, emit) {
      emit(state.copyWith(
          reorderLevelModel: state.reorderLevelModel
              ?.copyWith(description: event.description)));
    });
    on<MinimumEvent>((event, emit) {
      emit(state.copyWith(
          reorderLevelModel:
              state.reorderLevelModel?.copyWith(minimum: event.minimum)));
    });
    on<MaximumEvent>((event, emit) {
      emit(state.copyWith(
          reorderLevelModel:
              state.reorderLevelModel?.copyWith(maximum: event.maximum)));
    });
    on<RemarksEvent>((event, emit) {
      emit(state.copyWith(
          reorderLevelModel:
              state.reorderLevelModel?.copyWith(remarks: event.remarks)));
    });
    on<SaveEvent>((event, emit) {
      var s = state.reorderLevelModel!.toJson();
      print('*************');
      print(s);
      print('*************');
    });
    on<FetchingReorderEvent>((event, emit) async {
      emit(state.copyWith(status: Status.fetching));
      Box<InventoryItemHive> items = Hive.box<InventoryItemHive>(
        HiveTagNames.Items_Hive_Tag,
      );
      var s = items.values.toList();
      items.values.where((element) {
        print('${element.Item_Name} - ${element.Group_Id}}');
        return true;
      }).toList();
      print('#######################');
      emit(state.copyWith(status: Status.ready, allItems: s));
    });
  }
}
