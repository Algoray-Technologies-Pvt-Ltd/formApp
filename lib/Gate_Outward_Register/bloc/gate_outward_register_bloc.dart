import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../status.dart';
import '../models/gateOutwardRegisterModel.dart';

part 'gate_outward_register_event.dart';
part 'gate_outward_register_state.dart';

class GateOutwardRegisterBloc
    extends Bloc<GateOutwardRegisterEvent, GateOutwardRegisterState> {
  GateOutwardRegisterBloc()
      : super(GateOutwardRegisterState(
            gateOutwardRegisterModel: GateOutWardRegisterModel(),
            status: Status.init)) {
    on<FtNumberEvent>((event, emit) {
      emit(state.copyWith(
          gateOutwardRegisterModel: state.gateOutwardRegisterModel
              ?.copyWith(ftNumber: event.ftNumber)));
    });
    on<RevNumberEvent>((event, emit) {
      emit(state.copyWith(
          gateOutwardRegisterModel: state.gateOutwardRegisterModel
              ?.copyWith(revNumber: event.revNumber)));
    });
    on<MDateEvent>((event, emit) {
      emit(state.copyWith(
          gateOutwardRegisterModel:
              state.gateOutwardRegisterModel?.copyWith(date: event.mDate)));
    });
    on<PageNumberEvent>((event, emit) {
      emit(state.copyWith(
          gateOutwardRegisterModel: state.gateOutwardRegisterModel
              ?.copyWith(pageNumber: event.pageNumber)));
    });
    on<GateOutwardNumberEvent>((event, emit) {
      emit(state.copyWith(
          gateOutwardRegisterModel: state.gateOutwardRegisterModel
              ?.copyWith(gateOutwardNumber: event.gateOutwardNumber)));
    });
    on<GateOutwardDateTimeEvent>((event, emit) {
      emit(state.copyWith(
          gateOutwardRegisterModel: state.gateOutwardRegisterModel
              ?.copyWith(gateOutwardDateTime: event.gateOutwardDateTime)));
    });
    on<GatePassNumberEvent>((event, emit) {
      emit(state.copyWith(
          gateOutwardRegisterModel: state.gateOutwardRegisterModel
              ?.copyWith(gatePassNumber: event.gatePassNumber)));
    });
    on<GatePassDateEvent>((event, emit) {
      emit(state.copyWith(
          gateOutwardRegisterModel: state.gateOutwardRegisterModel
              ?.copyWith(gatePassDate: event.gatePassDate)));
    });
    on<ToEvent>((event, emit) {
      emit(state.copyWith(
          gateOutwardRegisterModel:
              state.gateOutwardRegisterModel?.copyWith(to: event.to)));
    });
    on<ModeOfTransportEvent>((event, emit) {
      emit(state.copyWith(
          gateOutwardRegisterModel: state.gateOutwardRegisterModel
              ?.copyWith(modeOfTransport: event.modeOfTransport)));
    });
    on<VehicleNumberEvent>((event, emit) {
      emit(state.copyWith(
          gateOutwardRegisterModel: state.gateOutwardRegisterModel
              ?.copyWith(vehicleNumber: event.vehicleNumber)));
    });
    on<DescriptionEvent>((event, emit) {
      emit(state.copyWith(
          gateOutwardRegisterModel: state.gateOutwardRegisterModel
              ?.copyWith(description: event.description)));
    });
    on<QuantityEvent>((event, emit) {
      emit(state.copyWith(
          gateOutwardRegisterModel: state.gateOutwardRegisterModel
              ?.copyWith(quantity: event.quantity)));
    });
    on<PurposeEvent>((event, emit) {
      emit(state.copyWith(
          gateOutwardRegisterModel: state.gateOutwardRegisterModel
              ?.copyWith(purpose: event.purpose)));
    });
    on<SignatureEvent>((event, emit) {
      emit(state.copyWith(
          gateOutwardRegisterModel: state.gateOutwardRegisterModel
              ?.copyWith(signature: event.signature)));
    });
    on<ReturnableOrNonReturnableEvent>((event, emit) {
      emit(state.copyWith(
          gateOutwardRegisterModel: state.gateOutwardRegisterModel?.copyWith(
              returnableOrNonReturnable: event.returnableOrNonReturnable)));
    });
    on<RemarksEvent>((event, emit) {
      emit(state.copyWith(
          gateOutwardRegisterModel: state.gateOutwardRegisterModel
              ?.copyWith(remarks: event.remarks)));
    });
    on<SaveEvent>((event, emit) {
      var s = state.gateOutwardRegisterModel!.toJson();
      print('*************');
      print(s);
      print('*************');
    });
  }
}
