import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:hive/hive.dart';

import '../../constants.dart';
import '../../model/Employee/EmployeeHiveModel.dart';
import '../../model/HiveModels/InventoryItems/InvetoryItemDataModel.dart';
import '../../model/Ledgers/LedMasterHiveModel.dart';
import '../../model/allLedgerModel.dart';
import '../../status.dart';
import '../../webService/webServicePHP.dart';
import '../../webService/weservice.dart';
import '../models/materialRequiredFormModel.dart';

part 'material_required_form_event.dart';
part 'material_required_form_state.dart';

class MaterialRequiredFormBloc
    extends Bloc<MaterialRequiredFormEvent, MaterialRequiredFormState> {
  MaterialRequiredFormBloc()
      : super(MaterialRequiredFormState(
            allledger: [],
            materialrequiredFormModel: MaterialrequiredFormModel(),
            status: Status.init)) {
    on<FtNumberEvent>((event, emit) {
      emit(state.copyWith(
          materialrequiredFormModel: state.materialrequiredFormModel
              ?.copyWith(ftNumber: event.ftNumber)));
    });
    on<RevNumberEvent>((event, emit) {
      emit(state.copyWith(
          materialrequiredFormModel: state.materialrequiredFormModel
              ?.copyWith(revNumber: event.revNumber)));
    });
    on<MDateEvent>((event, emit) {
      emit(state.copyWith(
          materialrequiredFormModel:
              state.materialrequiredFormModel?.copyWith(date: event.mDate)));
    });
    on<PageNumberEvent>((event, emit) {
      emit(state.copyWith(
          materialrequiredFormModel: state.materialrequiredFormModel
              ?.copyWith(pageNumber: event.pageNumber)));
    });
    on<PONumberEvent>((event, emit) {
      emit(state.copyWith(
          materialrequiredFormModel: state.materialrequiredFormModel
              ?.copyWith(PONumber: event.poNumber)));
    });
    on<PoSlNumberEvent>((event, emit) {
      emit(state.copyWith(
          materialrequiredFormModel: state.materialrequiredFormModel
              ?.copyWith(poSlNumber: event.poSlNumber)));
    });
    on<CustomerNameEvent>((event, emit) async {
      emit(state.copyWith(
          materialrequiredFormModel: state.materialrequiredFormModel
              ?.copyWith(customerName: event.customerName)));
    });
    on<MaterialrequiredDateEvent>((event, emit) {
      emit(state.copyWith(
          materialrequiredFormModel: state.materialrequiredFormModel
              ?.copyWith(materialrequiredDate: event.materialrequiredDate)));
    });
    on<SlNumberEvent>((event, emit) {
      emit(state.copyWith(
          materialrequiredFormModel: state.materialrequiredFormModel
              ?.copyWith(slNumber: event.slNumber)));
    });
    on<MaterialDescriptionEvent>((event, emit) {
      emit(state.copyWith(
          materialrequiredFormModel: state.materialrequiredFormModel
              ?.copyWith(materialDescription: event.materialDescription)));
    });
    on<InHandEvent>((event, emit) {
      emit(state.copyWith(
          materialrequiredFormModel:
              state.materialrequiredFormModel?.copyWith(inHand: event.inHand)));
    });
    on<RequiredQuantityEvent>((event, emit) {
      emit(state.copyWith(
          materialrequiredFormModel: state.materialrequiredFormModel
              ?.copyWith(requiredQuantity: event.requiredQuantity)));
    });
    on<IssuedQuantityEvent>((event, emit) {
      emit(state.copyWith(
          materialrequiredFormModel: state.materialrequiredFormModel
              ?.copyWith(issuedQuantity: event.issuedQuantity)));
    });
    on<RemarksEvent>((event, emit) {
      emit(state.copyWith(
          materialrequiredFormModel: state.materialrequiredFormModel
              ?.copyWith(remarks: event.remarks)));
    });
    on<RequisitionedByEvent>((event, emit) {
      emit(state.copyWith(
          materialrequiredFormModel: state.materialrequiredFormModel
              ?.copyWith(requisitionedBy: event.requisitionedBy)));
    });
    on<SkSignEvent>((event, emit) {
      emit(state.copyWith(
          materialrequiredFormModel:
              state.materialrequiredFormModel?.copyWith(skSign: event.skSign)));
    });
    on<PeSignEvent>((event, emit) {
      emit(state.copyWith(
          materialrequiredFormModel:
              state.materialrequiredFormModel?.copyWith(peSign: event.peSign)));
    });
    on<SaveEvent>((event, emit) {
      var s = state.materialrequiredFormModel!.toJson();
      print('*************');
      print(s);
      print('*************');
    });
    on<FetchingMaterialReqEvent>((event, emit) async {
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
      Box<LedgerMasterHiveModel> ledger = Hive.box<LedgerMasterHiveModel>(
        HiveTagNames.Ledgers_Hive_Tag,
      );
      var v = ledger.values.toList();
      ledger.values.where((element) {
        return true;
      }).toList();

           Box<EmployeeHiveModel> employee = Hive.box<EmployeeHiveModel>(
        HiveTagNames.Employee_Hive_Tag,
      );
      var e = employee.values.toList();
      employee.values.where((element) {
        print('${element.UserName} - ${element.Employee_ID}}');
        return true;
      }).toList();

      emit(state.copyWith(status: Status.ready, allItems: s, allledger: v,allEmployees: e));
    });
  }
}
