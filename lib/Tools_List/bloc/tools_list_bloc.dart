import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../../constants.dart';
import '../../model/HiveModels/InventoryItems/InvetoryItemDataModel.dart';
import '../../status.dart';
import '../models/toolsListModel.dart';

part 'tools_list_event.dart';
part 'tools_list_state.dart';

class ToolsListBloc extends Bloc<ToolsListEvent, ToolsListState> {
  ToolsListBloc()
      : super(ToolsListState(
            toolsListModel: ToolsListModel(), status: Status.init)) {
    on<FtNumberEvent>((event, emit) {
      emit(state.copyWith(
          toolsListModel:
              state.toolsListModel?.copyWith(ftNumber: event.ftNumber)));
    });
    on<RevNumberEvent>((event, emit) {
      emit(state.copyWith(
          toolsListModel:
              state.toolsListModel?.copyWith(revNumber: event.revNumber)));
    });
    on<MDateEvent>((event, emit) {
      emit(state.copyWith(
          toolsListModel: state.toolsListModel?.copyWith(date: event.mDate)));
    });
    on<PageNumberEvent>((event, emit) {
      emit(state.copyWith(
          toolsListModel:
              state.toolsListModel?.copyWith(pageNumber: event.pageNumber)));
    });
    on<SlNumberEvent>((event, emit) {
      emit(state.copyWith(
          toolsListModel:
              state.toolsListModel?.copyWith(slNumber: event.slNumber)));
    });
    on<DescriptionEvent>((event, emit) {
      emit(state.copyWith(
          toolsListModel:
              state.toolsListModel?.copyWith(description: event.description,itemId: event.uid)));
    });
    on<SizeEvent>((event, emit) {
      emit(state.copyWith(
          toolsListModel: state.toolsListModel?.copyWith(size: event.size)));
    });
    on<QuantityEvent>((event, emit) {
      emit(state.copyWith(
          toolsListModel: state.toolsListModel?.copyWith(quantity: event.qty)));
    });
    on<MakeEvent>((event, emit) {
      emit(state.copyWith(
          toolsListModel: state.toolsListModel?.copyWith(make: event.make)));
    });
    on<RemarksEvent>((event, emit) {
      emit(state.copyWith(
          toolsListModel:
              state.toolsListModel?.copyWith(remarks: event.remarks)));
    });
    on<SaveEvent>((event, emit) {
      var s = state.toolsListModel!.toJson();
      print('*************');
      print(s);
      print('*************');
    });
    on<FetchingToolsEvent>((event, emit) async {
      emit(state.copyWith(status: Status.fetching));
      Box<InventoryItemHive> items = Hive.box<InventoryItemHive>(
        HiveTagNames.Items_Hive_Tag,
      );
      var s = items.values.toList();
      items.values.where((element) {
        print('${element.Item_Name} - ${element.Group_Id}}');
        return true;
      }).toList();
      emit(state.copyWith(status: Status.ready, allItems: s));
    });
  }
}
