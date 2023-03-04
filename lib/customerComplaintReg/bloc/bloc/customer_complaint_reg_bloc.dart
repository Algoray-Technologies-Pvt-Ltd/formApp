import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:formapp/customerComplaintReg/model/customerComplaintRegmodel.dart';
import 'package:formapp/main.dart';

part 'customer_complaint_reg_event.dart';
part 'customer_complaint_reg_state.dart';

class CustomerComplaintRegBloc
    extends Bloc<CustomerComplaintRegEvent, CustomerComplaintRegState> {
  CustomerComplaintRegBloc()
      : super(CustomerComplaintRegState(
            customerComplaintReg: CustomerComplaintReg())) {
    on<RemarksEvent>((event, emit) {
      emit(state.copyWith(
          customerComplaintReg:
              state.customerComplaintReg?.copyWith(Remarks: event.remarks)));
    });
    on<InformDetailsEvent>((event, emit) {
      emit(state.copyWith(
          customerComplaintReg: state.customerComplaintReg
              ?.copyWith(InformDetails: event.InformDetails)));
    });
    on<InformDateEvent>((event, emit) {
      emit(state.copyWith(
          customerComplaintReg: state.customerComplaintReg
              ?.copyWith(InformDate: event.InformDate)));
    });
    on<IsInformtocustomerEvent>((event, emit) {
      emit(state.copyWith(
          customerComplaintReg: state.customerComplaintReg
              ?.copyWith(Informtocustomer: event.Informtocustomer)));
    });
    on<ActionDateEvent>((event, emit) {
      emit(state.copyWith(
          customerComplaintReg: state.customerComplaintReg
              ?.copyWith(ActionDate: event.ActionDate)));
    });
    on<PreventiveActionEvent>((event, emit) {
      emit(state.copyWith(
          customerComplaintReg: state.customerComplaintReg
              ?.copyWith(PreventiveAction: event.PreventiveAction)));
    });
    on<CorrectiveActionEvent>((event, emit) {
      emit(state.copyWith(
          customerComplaintReg: state.customerComplaintReg
              ?.copyWith(CorrectiveAction: event.CorrectiveAction)));
    });
    on<RootCauseEvent>((event, emit) {
      emit(state.copyWith(
          customerComplaintReg: state.customerComplaintReg
              ?.copyWith(RootCause: event.RootCause)));
    });
    on<NatureofComplaintEvent>((event, emit) {
      emit(state.copyWith(
          customerComplaintReg: state.customerComplaintReg
              ?.copyWith(NatureofComplaint: event.NatureofComplaint)));
    });
    on<addressEvent>((event, emit) {
      emit(state.copyWith(
          customerComplaintReg:
              state.customerComplaintReg?.copyWith(address: event.address)));
    });
    on<ComplaintDateEvent>((event, emit) {
      emit(state.copyWith(
          customerComplaintReg: state.customerComplaintReg
              ?.copyWith(ComplaintDate: event.ComplaintDate)));
    });
    on<SiNumberEvent>((event, emit) {
      emit(state.copyWith(
          customerComplaintReg:
              state.customerComplaintReg?.copyWith(siNumber: event.SiNumber)));
    });
    on<DateEvent>((event, emit) {
      emit(state.copyWith(
          customerComplaintReg:
              state.customerComplaintReg?.copyWith(date: event.date)));
    });
    on<RevNumberEvent>((event, emit) {
      emit(state.copyWith(
          customerComplaintReg: state.customerComplaintReg
              ?.copyWith(revNumber: event.revNumber)));
    });
    on<FtNumberEvent>((event, emit) {
      emit(state.copyWith(
          customerComplaintReg:
              state.customerComplaintReg?.copyWith(ftNumber: event.ftNumber)));
    });
    on<FormNameEvent>((event, emit) {
      emit(state.copyWith(
          customerComplaintReg:
              state.customerComplaintReg?.copyWith(formName: event.formName)));
    });
    on<SaveEvent>((event, emit) {});
  }
}
