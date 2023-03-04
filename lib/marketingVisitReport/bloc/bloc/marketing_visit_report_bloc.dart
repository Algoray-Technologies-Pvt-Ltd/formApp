import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:formapp/main.dart';
import 'package:formapp/marketingVisitReport/model/marketingVisitReport.dart';

part 'marketing_visit_report_event.dart';
part 'marketing_visit_report_state.dart';

class MarketingVisitReportBloc
    extends Bloc<MarketingVisitReportEvent, MarketingVisitReportState> {
  MarketingVisitReportBloc()
      : super(MarketingVisitReportState(
            marketingVisitReport: MarketingVisitReport())) {
    on<RemarksEvent>((event, emit) {
      emit(state.copyWith(
          marketingVisitReport:
              state.marketingVisitReport?.copyWith(remarks: event.Remarks)));
    });

    on<OrderReceivedDateEvent>((event, emit) {
      emit(state.copyWith(
          marketingVisitReport: state.marketingVisitReport
              ?.copyWith(OrderReceivedDate: event.OrderReceivedDate)));
    });

    on<FollowupDetailsEvent>((event, emit) {
      emit(state.copyWith(
          marketingVisitReport: state.marketingVisitReport
              ?.copyWith(followupDetails: event.followupDetails)));
    });

    on<DetailsMeetingEvent>((event, emit) {
      emit(state.copyWith(
          marketingVisitReport: state.marketingVisitReport
              ?.copyWith(detailsMeeting: event.detailsMeeting)));
    });

    on<PaymentCollectionEvent>((event, emit) {
      emit(state.copyWith(
          marketingVisitReport: state.marketingVisitReport
              ?.copyWith(paymentCollection: event.paymentCollection)));
    });

    on<AmendmentEvent>((event, emit) {
      emit(state.copyWith(
          marketingVisitReport: state.marketingVisitReport
              ?.copyWith(amendment: event.amendment)));
    });

    on<OrderEvent>((event, emit) {
      emit(state.copyWith(
          marketingVisitReport:
              state.marketingVisitReport?.copyWith(order: event.order)));
    });

    on<NegotationEvent>((event, emit) {
      emit(state.copyWith(
          marketingVisitReport: state.marketingVisitReport
              ?.copyWith(negotation: event.negotation)));
    });

    on<EnquiryEvent>((event, emit) {
      emit(state.copyWith(
          marketingVisitReport:
              state.marketingVisitReport?.copyWith(enquiry: event.enquiry)));
    });

    on<PersonMeetEvent>((event, emit) {
      emit(state.copyWith(
          marketingVisitReport: state.marketingVisitReport
              ?.copyWith(personMeet: event.personMeet)));
    });

    on<AddressEvent>((event, emit) {
      emit(state.copyWith(
          marketingVisitReport:
              state.marketingVisitReport?.copyWith(address: event.address)));
    });
    on<DateEvent>((event, emit) {
      emit(state.copyWith(
          marketingVisitReport:
              state.marketingVisitReport?.copyWith(date: event.date)));
    });
    on<RevNumberEvent>((event, emit) {
      emit(state.copyWith(
          marketingVisitReport: state.marketingVisitReport
              ?.copyWith(revNumber: event.revNumber)));
    });
    on<FtNumberEvent>((event, emit) {
      emit(state.copyWith(
          marketingVisitReport:
              state.marketingVisitReport?.copyWith(ftNumber: event.ftNumber)));
    });
    on<FormNameEvent>((event, emit) {
      emit(state.copyWith(
          marketingVisitReport:
              state.marketingVisitReport?.copyWith(formName: event.formName)));
    });
    on<SaveEvent>((event, emit) {});
  }
}
