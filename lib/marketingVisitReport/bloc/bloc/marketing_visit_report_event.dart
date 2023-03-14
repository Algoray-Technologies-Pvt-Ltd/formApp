part of 'marketing_visit_report_bloc.dart';

abstract class MarketingVisitReportEvent extends Equatable {
  const MarketingVisitReportEvent();

  @override
  List<Object> get props => [];
}

class RemarksEvent extends MarketingVisitReportEvent {
  String Remarks;
  RemarksEvent({
    required this.Remarks,
  });
}

class FollowupDetailsEvent extends MarketingVisitReportEvent {
  String followupDetails;
  FollowupDetailsEvent({
    required this.followupDetails,
  });
}

class DetailsMeetingEvent extends MarketingVisitReportEvent {
  String detailsMeeting;
  DetailsMeetingEvent({
    required this.detailsMeeting,
  });
}

class PaymentCollectionEvent extends MarketingVisitReportEvent {
  bool paymentCollection;
  PaymentCollectionEvent({
    required this.paymentCollection,
  });
}

class AmendmentEvent extends MarketingVisitReportEvent {
  bool amendment;
  AmendmentEvent({
    required this.amendment,
  });
}

class OrderEvent extends MarketingVisitReportEvent {
  bool order;
  OrderEvent({
    required this.order,
  });
}

class NegotationEvent extends MarketingVisitReportEvent {
  bool negotation;
  NegotationEvent({
    required this.negotation,
  });
}

class EnquiryEvent extends MarketingVisitReportEvent {
  bool enquiry;
  EnquiryEvent({
    required this.enquiry,
  });
}

class AddressEvent extends MarketingVisitReportEvent {
  AddressBook address;
  AddressEvent({
    required this.address,
  });
}

class PersonMeetEvent extends MarketingVisitReportEvent {
  String personMeet;
  PersonMeetEvent({
    required this.personMeet,
  });
}

class DateEvent extends MarketingVisitReportEvent {
  DateTime date;
  DateEvent({
    required this.date,
  });
}

class RevNumberEvent extends MarketingVisitReportEvent {
  String revNumber;
  RevNumberEvent({
    required this.revNumber,
  });
}

class FtNumberEvent extends MarketingVisitReportEvent {
  String ftNumber;
  FtNumberEvent({
    required this.ftNumber,
  });
}

class FormNameEvent extends MarketingVisitReportEvent {
  String formName;
  FormNameEvent({
    required this.formName,
  });
}

class SaveEvent extends MarketingVisitReportEvent {}

class FetchingEvent extends MarketingVisitReportEvent {}
