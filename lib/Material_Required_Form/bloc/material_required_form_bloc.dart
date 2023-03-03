import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../status.dart';
import '../models/materialRequiredFormModel.dart';

part 'material_required_form_event.dart';
part 'material_required_form_state.dart';

class MaterialRequiredFormBloc
    extends Bloc<MaterialRequiredFormEvent, MaterialRequiredFormState> {
  MaterialRequiredFormBloc()
      : super(MaterialRequiredFormState(
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
    on<CustomerNameEvent>((event, emit) {
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
  }
}
