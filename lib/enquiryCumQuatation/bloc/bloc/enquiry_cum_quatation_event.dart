part of 'enquiry_cum_quatation_bloc.dart';

abstract class EnquiryCumQuatationEvent extends Equatable {
  const EnquiryCumQuatationEvent();

  @override
  List<Object> get props => [];
}

class RemarksEvent extends EnquiryCumQuatationEvent {
  String remarks;
  RemarksEvent({
    required this.remarks,
  });
}

class OrderReceivedDateEvent extends EnquiryCumQuatationEvent {
  DateTime OrderReceivedDate;
  OrderReceivedDateEvent({
    required this.OrderReceivedDate,
  });
}

class ReasonQuoNotSentEvent extends EnquiryCumQuatationEvent {
  String reason;
  ReasonQuoNotSentEvent({
    required this.reason,
  });
}

class QuoDueDateEvent extends EnquiryCumQuatationEvent {
  DateTime date;
  QuoDueDateEvent({
    required this.date,
  });
}

class QuoDateEvent extends EnquiryCumQuatationEvent {
  DateTime date;
  QuoDateEvent({
    required this.date,
  });
}

class QuoNoEvent extends EnquiryCumQuatationEvent {
  String number;
  QuoNoEvent({
    required this.number,
  });
}

class EnqQtyEvent extends EnquiryCumQuatationEvent {
  int qty;
  EnqQtyEvent({
    required this.qty,
  });
}

class DescriptionofJobEvent extends EnquiryCumQuatationEvent {
  String details;
  DescriptionofJobEvent({
    required this.details,
  });
}

class CustomerNameEvent extends EnquiryCumQuatationEvent {
  String CustomerName;
  CustomerNameEvent({
    required this.CustomerName,
  });
}

class CoordinatorNameEvent extends EnquiryCumQuatationEvent {
  String name;
  CoordinatorNameEvent({
    required this.name,
  });
}

class ModeofEnquiryEvent extends EnquiryCumQuatationEvent {
  String modeofEnquiry;
  ModeofEnquiryEvent({
    required this.modeofEnquiry,
  });
}

class SiNumberEvent extends EnquiryCumQuatationEvent {
  int numb;
  SiNumberEvent({
    required this.numb,
  });
}

class EnquiryNOEvent extends EnquiryCumQuatationEvent {
  int enquiry;
  EnquiryNOEvent({
    required this.enquiry,
  });
}

class EnqRecDateEvent extends EnquiryCumQuatationEvent {
  DateTime RecDate;
  EnqRecDateEvent({
    required this.RecDate,
  });
}

class DateEvent extends EnquiryCumQuatationEvent {
  DateTime date;
  DateEvent({
    required this.date,
  });
}

class RevNumberEvent extends EnquiryCumQuatationEvent {
  String revNumber;
  RevNumberEvent({
    required this.revNumber,
  });
}

class FtNumberEvent extends EnquiryCumQuatationEvent {
  String ftNumber;
  FtNumberEvent({
    required this.ftNumber,
  });
}

class FormNameEvent extends EnquiryCumQuatationEvent {
  String formName;
  FormNameEvent({
    required this.formName,
  });
}
