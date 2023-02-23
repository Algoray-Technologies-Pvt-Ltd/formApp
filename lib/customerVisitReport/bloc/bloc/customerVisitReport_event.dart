part of 'customerVisitReport_bloc.dart';

abstract class CustomerVisitReportEvent extends Equatable {
  const CustomerVisitReportEvent();

  @override
  List<Object> get props => [];
}

class RemarksEvent extends CustomerVisitReportEvent {
  String Remarks;
  RemarksEvent({
    required this.Remarks,
  });
}

class OrderReceivedDateEvent extends CustomerVisitReportEvent {
  DateTime OrderReceivedDate;
  OrderReceivedDateEvent({
    required this.OrderReceivedDate,
  });
}

class FeedbackEvent extends CustomerVisitReportEvent {
  String feedback;
  FeedbackEvent({
    required this.feedback,
  });
}

class CustomerVisitDetailsEvent extends CustomerVisitReportEvent {
  String customerVisitDetails;
  CustomerVisitDetailsEvent({
    required this.customerVisitDetails,
  });
}

// class SiNumberEvent extends CustomerVisitReportEvent {
//   int SiNumber;
//   SiNumberEvent({
//     required this.SiNumber,
//   });
// }

class AmendmentEvent extends CustomerVisitReportEvent {
  bool amendment;
  AmendmentEvent({
    required this.amendment,
  });
}

class OrderEvent extends CustomerVisitReportEvent {
  bool order;
  OrderEvent({
    required this.order,
  });
}

class ApprovalEvent extends CustomerVisitReportEvent {
  String approval;
  ApprovalEvent({
    required this.approval,
  });
}

class EnquiryEvent extends CustomerVisitReportEvent {
  bool enquiry;
  EnquiryEvent({
    required this.enquiry,
  });
}

class CoordinatorEvent extends CustomerVisitReportEvent {
  String coordinator;
  CoordinatorEvent({
    required this.coordinator,
  });
}

class AddressEvent extends CustomerVisitReportEvent {
  AddressBook address;
  AddressEvent({
    required this.address,
  });
}

class DateEvent extends CustomerVisitReportEvent {
  DateTime date;
  DateEvent({
    required this.date,
  });
}

class RevNumberEvent extends CustomerVisitReportEvent {
  String revNumber;
  RevNumberEvent({
    required this.revNumber,
  });
}

class FtNumberEvent extends CustomerVisitReportEvent {
  String ftNumber;
  FtNumberEvent({
    required this.ftNumber,
  });
}

class FormNameEvent extends CustomerVisitReportEvent {
  String formName;
  FormNameEvent({
    required this.formName,
  });
}
