import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../../constants.dart';
import '../../model/HiveModels/InventoryItems/InvetoryItemDataModel.dart';
import '../../status.dart';
import '../models/issueAndReturnRegisterModel.dart';

part 'issue_and_return_register_event.dart';
part 'issue_and_return_register_state.dart';

class IssueAndReturnRegisterBloc
    extends Bloc<IssueAndReturnRegisterEvent, IssueAndReturnRegisterState> {
  IssueAndReturnRegisterBloc()
      : super(IssueAndReturnRegisterState(
            issueAndReturnRegisterModel: IssueAndReturnRegisterModel(),
            status: Status.init)) {
    on<FtNumberEvent>((event, emit) {
      emit(state.copyWith(
          issueAndReturnRegisterModel: state.issueAndReturnRegisterModel
              ?.copyWith(ftNumber: event.ftNumber)));
    });
    on<RevNumberEvent>((event, emit) {
      emit(state.copyWith(
          issueAndReturnRegisterModel: state.issueAndReturnRegisterModel
              ?.copyWith(revNumber: event.revNumber)));
    });
    on<MDateEvent>((event, emit) {
      emit(state.copyWith(
          issueAndReturnRegisterModel:
              state.issueAndReturnRegisterModel?.copyWith(date: event.mDate)));
    });
    on<PageNumberEvent>((event, emit) {
      emit(state.copyWith(
          issueAndReturnRegisterModel: state.issueAndReturnRegisterModel
              ?.copyWith(pageNumber: event.pageNumber)));
    });
    on<SlNumberEvent>((event, emit) {
      emit(state.copyWith(
          issueAndReturnRegisterModel: state.issueAndReturnRegisterModel
              ?.copyWith(slNumber: event.slNumber)));
    });
    on<MaterialDescriotionEvent>((event, emit) {
      emit(state.copyWith(
          issueAndReturnRegisterModel: state.issueAndReturnRegisterModel
              ?.copyWith(materialDescription: event.materialDescriotion,itemId: event.uid)));
    });
    on<IssueDateEvent>((event, emit) {
      emit(state.copyWith(
          issueAndReturnRegisterModel: state.issueAndReturnRegisterModel
              ?.copyWith(issueDate: event.issueDate)));
    });
    on<IssueQtyEvent>((event, emit) {
      emit(state.copyWith(
          issueAndReturnRegisterModel: state.issueAndReturnRegisterModel
              ?.copyWith(issueQuantity: event.issueQty)));
    });
    on<IssueToEvent>((event, emit) {
      emit(state.copyWith(
          issueAndReturnRegisterModel: state.issueAndReturnRegisterModel
              ?.copyWith(slNumber: event.issueTo)));
    });
    on<ReturnDateEvent>((event, emit) {
      emit(state.copyWith(
          issueAndReturnRegisterModel: state.issueAndReturnRegisterModel
              ?.copyWith(returnDate: event.returnDate)));
    });
    on<ReturnQtyEvent>((event, emit) {
      emit(state.copyWith(
          issueAndReturnRegisterModel: state.issueAndReturnRegisterModel
              ?.copyWith(returnQuantity: event.returnQty)));
    });
    on<ReturnByEvent>((event, emit) {
      emit(state.copyWith(
          issueAndReturnRegisterModel: state.issueAndReturnRegisterModel
              ?.copyWith(returnBy: event.returnBy)));
    });
    on<RemarksEvent>((event, emit) {
      emit(state.copyWith(
          issueAndReturnRegisterModel: state.issueAndReturnRegisterModel
              ?.copyWith(remarks: event.remarks)));
    });
    on<SaveEvent>((event, emit) {
      var s = state.issueAndReturnRegisterModel!.toJson();
      print('*************');
      print(s);
      print('*************');
    });
    on<FetchingIssueCumEvent>((event, emit) async {
      print('###############');
      emit(state.copyWith(status: Status.fetching));
      print('#######################');
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
