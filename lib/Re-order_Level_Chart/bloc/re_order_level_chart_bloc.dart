import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

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
  }
}
