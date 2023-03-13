import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:hive/hive.dart';

import '../../constants.dart';
import '../../model/HiveModels/InventoryItems/InvetoryItemDataModel.dart';
import '../../status.dart';
import '../models/goodsRecieptNoteModel.dart';

part 'goods_reciept_note_event.dart';
part 'goods_reciept_note_state.dart';

class GoodsRecieptNoteBloc
    extends Bloc<GoodsRecieptNoteEvent, GoodsRecieptNoteState> {
  GoodsRecieptNoteBloc()
      : super(GoodsRecieptNoteState(
            grnModel: GoodsRecieptNoteModel(), status: Status.init)) {
    on<FtNumberEvent>((event, emit) {
      emit(state.copyWith(
          grnModel: state.grnModel?.copyWith(ftNumber: event.ftNumber)));
    });
    on<RevNumberEvent>((event, emit) {
      emit(state.copyWith(
          grnModel: state.grnModel?.copyWith(revNumber: event.revNumber)));
    });
    on<MDateEvent>((event, emit) {
      emit(state.copyWith(
          grnModel: state.grnModel?.copyWith(date: event.mDate)));
    });
    on<PageNumberEvent>((event, emit) {
      emit(state.copyWith(
          grnModel: state.grnModel?.copyWith(pageNumber: event.pageNumber)));
    });
    on<GrnNumberEvent>((event, emit) {
      emit(state.copyWith(
          grnModel: state.grnModel?.copyWith(grnNumber: event.grnNumber)));
    });
    on<SupplierNameEvent>((event, emit) {
      emit(state.copyWith(
          grnModel:
              state.grnModel?.copyWith(supplierName: event.supplierName)));
    });
    on<GrnDateEvent>((event, emit) {
      emit(state.copyWith(
          grnModel: state.grnModel?.copyWith(grnDate: event.grnDate)));
    });
    on<BillNumberEvent>((event, emit) {
      emit(state.copyWith(
          grnModel: state.grnModel?.copyWith(billNumber: event.billNumber)));
    });
    on<BillDateEvent>((event, emit) {
      emit(state.copyWith(
          grnModel: state.grnModel?.copyWith(billDate: event.billDate)));
    });
    on<SlNumberEvent>((event, emit) {
      emit(state.copyWith(
          grnModel: state.grnModel?.copyWith(slNumber: event.slNumber)));
    });
    on<MaterialDescriotionEvent>((event, emit) {
      emit(state.copyWith(
          grnModel: state.grnModel
              ?.copyWith(materialDescriotion: event.materialDescriotion)));
    });
    on<OrderQtyEvent>((event, emit) {
      emit(state.copyWith(
          grnModel: state.grnModel?.copyWith(orderQty: event.orderQty)));
    });
    on<RecievedQtyEvent>((event, emit) {
      emit(state.copyWith(
          grnModel: state.grnModel?.copyWith(recievedQty: event.recievedQty)));
    });
    on<AcceptedQtyEvent>((event, emit) {
      emit(state.copyWith(
          grnModel: state.grnModel?.copyWith(acceptedQty: event.acceptedQty)));
    });
    on<InspectionDetailsEvent>((event, emit) {
      emit(state.copyWith(
          grnModel: state.grnModel
              ?.copyWith(inspectionDetails: event.inspectionDetails)));
    });
    on<IFRejectionDetailsEvent>((event, emit) {
      emit(state.copyWith(
          grnModel: state.grnModel
              ?.copyWith(IFRejectionDetails: event.ifrejectionDetails)));
    });
    on<RemarksEvent>((event, emit) {
      emit(state.copyWith(
          grnModel: state.grnModel?.copyWith(remarks: event.remarks)));
    });
    on<SaveEvent>((event, emit) {
      var s = state.grnModel!.toJson();
      print('*************');
      print(s);
      print('*************');
    });
    on<FetchingGRNEvent>((event, emit) async {
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
