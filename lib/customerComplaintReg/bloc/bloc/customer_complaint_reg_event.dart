part of 'customer_complaint_reg_bloc.dart';

abstract class CustomerComplaintRegEvent extends Equatable {
  const CustomerComplaintRegEvent();

  @override
  List<Object> get props => [];
}

class RemarksEvent extends CustomerComplaintRegEvent {
  String remarks;
  RemarksEvent({
    required this.remarks,
  });
}

class InformDetailsEvent extends CustomerComplaintRegEvent {
  String InformDetails;
  InformDetailsEvent({
    required this.InformDetails,
  });
}

class InformDateEvent extends CustomerComplaintRegEvent {
  DateTime InformDate;
  InformDateEvent({
    required this.InformDate,
  });
}

class IsInformtocustomerEvent extends CustomerComplaintRegEvent {
  bool Informtocustomer;
  IsInformtocustomerEvent({
    required this.Informtocustomer,
  });
}

class ActionDateEvent extends CustomerComplaintRegEvent {
  DateTime ActionDate;
  ActionDateEvent({
    required this.ActionDate,
  });
}

class PreventiveActionEvent extends CustomerComplaintRegEvent {
  String PreventiveAction;
  PreventiveActionEvent({
    required this.PreventiveAction,
  });
}

class CorrectiveActionEvent extends CustomerComplaintRegEvent {
  String CorrectiveAction;
  CorrectiveActionEvent({
    required this.CorrectiveAction,
  });
}

class RootCauseEvent extends CustomerComplaintRegEvent {
  String RootCause;
  RootCauseEvent({
    required this.RootCause,
  });
}

class NatureofComplaintEvent extends CustomerComplaintRegEvent {
  String NatureofComplaint;
  NatureofComplaintEvent({
    required this.NatureofComplaint,
  });
}

class addressEvent extends CustomerComplaintRegEvent {
  AddressBook address;
  addressEvent({
    required this.address,
  });
}

class ComplaintDateEvent extends CustomerComplaintRegEvent {
  DateTime ComplaintDate;
  ComplaintDateEvent({
    required this.ComplaintDate,
  });
}

class SiNumberEvent extends CustomerComplaintRegEvent {
  int SiNumber;
  SiNumberEvent({
    required this.SiNumber,
  });
}

class DateEvent extends CustomerComplaintRegEvent {
  DateTime date;
  DateEvent({
    required this.date,
  });
}

class RevNumberEvent extends CustomerComplaintRegEvent {
  String revNumber;
  RevNumberEvent({
    required this.revNumber,
  });
}

class FtNumberEvent extends CustomerComplaintRegEvent {
  String ftNumber;
  FtNumberEvent({
    required this.ftNumber,
  });
}

class FormNameEvent extends CustomerComplaintRegEvent {
  String formName;
  FormNameEvent({
    required this.formName,
  });
}

class SaveEvent extends CustomerComplaintRegEvent {}

class FetchEvent extends CustomerComplaintRegEvent {}
