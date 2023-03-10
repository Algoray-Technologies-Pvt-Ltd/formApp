import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:formapp/customerVisitReport/model/customerVisitReportmodel.dart';
import 'package:formapp/main.dart';

part 'customerVisitReport_event.dart';
part 'customerVisitReport_state.dart';

class CustomerVisitReportBloc
    extends Bloc<CustomerVisitReportEvent, CustomerVisitReportState> {
  CustomerVisitReportBloc()
      : super(CustomerVisitReportState(
            customerVisitReport: CustomerVisitReport())) {
    on<RemarksEvent>((event, emit) {
      emit(state.copyWith(
          customerVisitReport:
              state.customerVisitReport?.copyWith(remarks: event.Remarks)));
    });

    on<OrderReceivedDateEvent>((event, emit) {
      emit(state.copyWith(
          customerVisitReport: state.customerVisitReport
              ?.copyWith(OrderReceivedDate: event.OrderReceivedDate)));
    });
    on<FeedbackEvent>((event, emit) {
      emit(state.copyWith(
          customerVisitReport:
              state.customerVisitReport?.copyWith(feedback: event.feedback)));
    });
    on<CustomerVisitDetailsEvent>((event, emit) {
      emit(state.copyWith(
          customerVisitReport: state.customerVisitReport
              ?.copyWith(customerVisitDetails: event.customerVisitDetails)));
    });
    // on<SiNumberEvent>((event, emit) {
    //   emit(state.copyWith(
    //       customerVisitReport:
    //           state.customerVisitReport?.copyWith(   : event.SiNumber)));
    // });
    on<AuditEvent>((event, emit) {
      emit(state.copyWith(
          customerVisitReport:
              state.customerVisitReport?.copyWith(audit: event.Audit)));
    });
    on<OrderEvent>((event, emit) {
      emit(state.copyWith(
          customerVisitReport:
              state.customerVisitReport?.copyWith(order: event.order)));
    });
    on<ApprovalEvent>((event, emit) {
      emit(state.copyWith(
          customerVisitReport:
              state.customerVisitReport?.copyWith(approval: event.approval)));
    });

    on<EnquiryEvent>((event, emit) {
      emit(state.copyWith(
          customerVisitReport:
              state.customerVisitReport?.copyWith(enquiry: event.enquiry)));
    });
    on<CoordinatorEvent>((event, emit) {
      emit(state.copyWith(
          customerVisitReport: state.customerVisitReport
              ?.copyWith(coordinator: event.coordinator)));
    });
    on<CustomerEvent>((event, emit) {
      emit(state.copyWith(
          customerVisitReport:
              state.customerVisitReport?.copyWith(name: event.customer)));
    });
    on<AddressEvent>((event, emit) {
      emit(state.copyWith(
          customerVisitReport:
              state.customerVisitReport?.copyWith(address: event.address)));
    });
    on<DateEvent>((event, emit) {
      emit(state.copyWith(
          customerVisitReport:
              state.customerVisitReport?.copyWith(date: event.date)));
    });
    on<RevNumberEvent>((event, emit) {
      emit(state.copyWith(
          customerVisitReport:
              state.customerVisitReport?.copyWith(revNumber: event.revNumber)));
    });
    on<FtNumberEvent>((event, emit) {
      emit(state.copyWith(
          customerVisitReport:
              state.customerVisitReport?.copyWith(ftNumber: event.ftNumber)));
    });
    on<FormNameEvent>((event, emit) {
      emit(state.copyWith(
          customerVisitReport:
              state.customerVisitReport?.copyWith(formName: event.formName)));
    });
    on<SaveEvent>((event, emit) {
      var s = state.customerVisitReport?.toJson();
      print('********************');
      print(s);
      print('********************');
    });
  }
}
