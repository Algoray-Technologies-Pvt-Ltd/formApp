import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../../constants.dart';
import '../../model/Employee/EmployeeHiveModel.dart';
import '../../model/HiveModels/InventoryItems/InvetoryItemDataModel.dart';
import '../../status.dart';
import '../models/gateInwardRegisterModel.dart';

part 'gate_inward_register_event.dart';
part 'gate_inward_register_state.dart';

class GateInwardRegisterBloc
    extends Bloc<GateInwardRegisterEvent, GateInwardRegisterState> {
  GateInwardRegisterBloc()
      : super(GateInwardRegisterState(
            status: Status.init,
            gateInwardRegisterModel: GateInwardRegisterModel())) {
    on<FtNumberEvent>((event, emit) {
      emit(state.copyWith(
          gateInwardRegisterModel: state.gateInwardRegisterModel
              ?.copyWith(ftNumber: event.ftNumber)));
    });
    on<RevNumberEvent>((event, emit) {
      emit(state.copyWith(
          gateInwardRegisterModel: state.gateInwardRegisterModel
              ?.copyWith(revNumber: event.revNumber)));
    });
    on<MDateEvent>((event, emit) {
      emit(state.copyWith(
          gateInwardRegisterModel:
              state.gateInwardRegisterModel?.copyWith(date: event.mDate)));
    });
    on<PageNumberEvent>((event, emit) {
      emit(state.copyWith(
          gateInwardRegisterModel: state.gateInwardRegisterModel
              ?.copyWith(pageNumber: event.pageNumber)));
    });
    on<GateInwardNumberEvent>((event, emit) {
      emit(state.copyWith(
          gateInwardRegisterModel: state.gateInwardRegisterModel
              ?.copyWith(gateInwardNumber: event.gateInwardNumber)));
    });
    on<GateInwardDateTimeEvent>((event, emit) {
      emit(state.copyWith(
          gateInwardRegisterModel: state.gateInwardRegisterModel
              ?.copyWith(gateInwardDateTime: event.gateInwardDateTime)));
    });
    on<GatePassNumberEvent>((event, emit) {
      emit(state.copyWith(
          gateInwardRegisterModel: state.gateInwardRegisterModel
              ?.copyWith(gatePassNumber: event.gatePassNumber)));
    });
    on<GatePassDateEvent>((event, emit) {
      emit(state.copyWith(
          gateInwardRegisterModel: state.gateInwardRegisterModel
              ?.copyWith(gatePassDate: event.gatePassDate)));
    });
    on<FromEvent>((event, emit) {
      emit(state.copyWith(
          gateInwardRegisterModel:
              state.gateInwardRegisterModel?.copyWith(from: event.from)));
    });
    on<ModeOfTransportEvent>((event, emit) {
      emit(state.copyWith(
          gateInwardRegisterModel: state.gateInwardRegisterModel
              ?.copyWith(modeOfTransport: event.modeOfTransport)));
    });
    on<VehicleNumberEvent>((event, emit) {
      emit(state.copyWith(
          gateInwardRegisterModel: state.gateInwardRegisterModel
              ?.copyWith(vehicleNumber: event.vehicleNumber)));
    });
    on<DescriptionEvent>((event, emit) {
      emit(state.copyWith(
          gateInwardRegisterModel: state.gateInwardRegisterModel
              ?.copyWith(description: event.description)));
    });
    on<QuantityEvent>((event, emit) {
      emit(state.copyWith(
          gateInwardRegisterModel: state.gateInwardRegisterModel
              ?.copyWith(quantity: event.quantity)));
    });
    on<PurposeEvent>((event, emit) {
      emit(state.copyWith(
          gateInwardRegisterModel:
              state.gateInwardRegisterModel?.copyWith(purpose: event.purpose)));
    });
    on<CheckedByEvent>((event, emit) {
      emit(state.copyWith(
          gateInwardRegisterModel: state.gateInwardRegisterModel
              ?.copyWith(checkedBy: event.checkedBy)));
    });
    on<ReturnableOrNonReturnableEvent>((event, emit) {
      emit(state.copyWith(
          gateInwardRegisterModel: state.gateInwardRegisterModel?.copyWith(
              returnableOrNonReturnable: event.returnableOrNonReturnable)));
    });
    on<RemarksEvent>((event, emit) {
      emit(state.copyWith(
          gateInwardRegisterModel:
              state.gateInwardRegisterModel?.copyWith(remarks: event.remarks)));
    });
    on<FetchingGateInwardEvent>((event, emit) async {
      emit(state.copyWith(status: Status.fetching));
      Box<InventoryItemHive> items = Hive.box<InventoryItemHive>(
        HiveTagNames.Items_Hive_Tag,
      );
      var s = items.values.toList();
      items.values.where((element) {
        print('${element.Item_Name} - ${element.Group_Id}}');
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

      emit(state.copyWith(status: Status.ready, allItems: s, allEmployees: e));
    });
    // on<SaveEvent>((event, emit) {
    //   var s = state.gateInwardRegisterModel!.toJson();
    //   print('*************');
    //   print(s);
    //   print('*************');
    // });
  }
}
