import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:formapp/enquiryCumQuatation/model/enquiryCumQuatation.dart';

part 'enquiry_cum_quatation_event.dart';
part 'enquiry_cum_quatation_state.dart';

class EnquiryCumQuatationBloc
    extends Bloc<EnquiryCumQuatationEvent, EnquiryCumQuatationState> {
  EnquiryCumQuatationBloc()
      : super(EnquiryCumQuatationState(
            enquiryCumQuatation: EnquiryCumQuatation())) {
    on<RemarksEvent>((event, emit) {
      emit(state.copyWith(
          enquiryCumQuatation:
              state.enquiryCumQuatation?.copyWith(Remarks: event.remarks)));
    });

    on<OrderReceivedDateEvent>((event, emit) {
      emit(state.copyWith(
          enquiryCumQuatation: state.enquiryCumQuatation
              ?.copyWith(OrderReceivedDate: event.OrderReceivedDate)));
    });

    on<ReasonQuoNotSentEvent>((event, emit) {
      emit(state.copyWith(
          enquiryCumQuatation: state.enquiryCumQuatation
              ?.copyWith(ReasonQuoNotSent: event.reason)));
    });

    on<QuoDueDateEvent>((event, emit) {
      emit(state.copyWith(
          enquiryCumQuatation:
              state.enquiryCumQuatation?.copyWith(QuoDueDate: event.date)));
    });

    on<QuoDateEvent>((event, emit) {
      emit(state.copyWith(
          enquiryCumQuatation:
              state.enquiryCumQuatation?.copyWith(QuoDate: event.date)));
    });

    on<QuoNoEvent>((event, emit) {
      emit(state.copyWith(
          enquiryCumQuatation:
              state.enquiryCumQuatation?.copyWith(QuoNo: event.number)));
    });

    on<EnqQtyEvent>((event, emit) {
      emit(state.copyWith(
          enquiryCumQuatation: state.enquiryCumQuatation
              ?.copyWith(EnqQty: int.parse(event.qty))));
    });

    on<DescriptionofJobEvent>((event, emit) {
      emit(state.copyWith(
          enquiryCumQuatation: state.enquiryCumQuatation
              ?.copyWith(DescriptionofJob: event.details)));
    });

    on<CustomerNameEvent>((event, emit) {
      emit(state.copyWith(
          enquiryCumQuatation: state.enquiryCumQuatation
              ?.copyWith(CoordinatorName: event.CustomerName)));
    });

    on<CoordinatorNameEvent>((event, emit) {
      emit(state.copyWith(
          enquiryCumQuatation: state.enquiryCumQuatation
              ?.copyWith(CoordinatorName: event.name)));
    });

    on<ModeofEnquiryEvent>((event, emit) {
      emit(state.copyWith(
          enquiryCumQuatation: state.enquiryCumQuatation
              ?.copyWith(ModeofEnquiry: event.modeofEnquiry)));
    });

    on<SiNumberEvent>((event, emit) {
      emit(state.copyWith(
          enquiryCumQuatation:
              state.enquiryCumQuatation?.copyWith(siNumber: event.numb)));
    });
    on<EnquiryDatevent>((event, emit) {
      emit(state.copyWith(
          enquiryCumQuatation:
              state.enquiryCumQuatation?.copyWith(EnquiryDate: event.enquiry)));
    });

    on<EnquiryNOEvent>((event, emit) {
      emit(state.copyWith(
          enquiryCumQuatation: state.enquiryCumQuatation
              ?.copyWith(enqNumber: int.parse(event.enquiry))));
    });

    on<EnqRecDateEvent>((event, emit) {
      emit(state.copyWith(
          enquiryCumQuatation: state.enquiryCumQuatation
              ?.copyWith(EnquiryRecDate: event.RecDate)));
    });
    on<DateEvent>((event, emit) {
      emit(state.copyWith(
          enquiryCumQuatation:
              state.enquiryCumQuatation?.copyWith(date: event.date)));
    });
    on<RevNumberEvent>((event, emit) {
      emit(state.copyWith(
          enquiryCumQuatation:
              state.enquiryCumQuatation?.copyWith(revNumber: event.revNumber)));
    });
    on<FtNumberEvent>((event, emit) {
      emit(state.copyWith(
          enquiryCumQuatation:
              state.enquiryCumQuatation?.copyWith(ftNumber: event.ftNumber)));
    });
    on<FormNameEvent>((event, emit) {
      emit(state.copyWith(
          enquiryCumQuatation:
              state.enquiryCumQuatation?.copyWith(formName: event.formName)));
    });
    on<SaveEvent>((event, emit) {
      
    });
  }
}
