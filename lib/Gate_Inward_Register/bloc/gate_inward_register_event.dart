part of 'gate_inward_register_bloc.dart';

class GateInwardRegisterEvent extends Equatable {
  const GateInwardRegisterEvent();

  @override
  List<Object> get props => [];
}

class FtNumberEvent extends GateInwardRegisterEvent {
  String ftNumber;
  FtNumberEvent({
    required this.ftNumber,
  });
}

class RevNumberEvent extends GateInwardRegisterEvent {
  String revNumber;
  RevNumberEvent({
    required this.revNumber,
  });
}

class MDateEvent extends GateInwardRegisterEvent {
  DateTime mDate;
  MDateEvent({
    required this.mDate,
  });
}

class PageNumberEvent extends GateInwardRegisterEvent {
  String pageNumber;
  PageNumberEvent({
    required this.pageNumber,
  });
}

class GateInwardNumberEvent extends GateInwardRegisterEvent {
  String gateInwardNumber;
  GateInwardNumberEvent({
    required this.gateInwardNumber,
  });
}

class GateInwardDateTimeEvent extends GateInwardRegisterEvent {
  DateTime gateInwardDateTime;
  GateInwardDateTimeEvent({
    required this.gateInwardDateTime,
  });
}

class GatePassNumberEvent extends GateInwardRegisterEvent {
  String gatePassNumber;
  GatePassNumberEvent({
    required this.gatePassNumber,
  });
}

class GatePassDateEvent extends GateInwardRegisterEvent {
  DateTime gatePassDate;
  GatePassDateEvent({
    required this.gatePassDate,
  });
}

class FromEvent extends GateInwardRegisterEvent {
  String from;
  FromEvent({
    required this.from,
  });
}

class ModeOfTransportEvent extends GateInwardRegisterEvent {
  String modeOfTransport;
  ModeOfTransportEvent({
    required this.modeOfTransport,
  });
}

class VehicleNumberEvent extends GateInwardRegisterEvent {
  String vehicleNumber;
  VehicleNumberEvent({
    required this.vehicleNumber,
  });
}

class DescriptionEvent extends GateInwardRegisterEvent {
  String description;
  String uid;
  DescriptionEvent({
    required this.description,
    required this.uid,
  });
}

class QuantityEvent extends GateInwardRegisterEvent {
  int quantity;
  QuantityEvent({
    required this.quantity,
  });
}

class PurposeEvent extends GateInwardRegisterEvent {
  String purpose;
  PurposeEvent({
    required this.purpose,
  });
}

class CheckedByEvent extends GateInwardRegisterEvent {
  String checkedBy;
  String uid;
  CheckedByEvent({
    required this.checkedBy,
    required this.uid,
  });
}

class ReturnableOrNonReturnableEvent extends GateInwardRegisterEvent {
  bool returnableOrNonReturnable;
  ReturnableOrNonReturnableEvent({
    required this.returnableOrNonReturnable,
  });
}

class RemarksEvent extends GateInwardRegisterEvent {
  String remarks;
  RemarksEvent({
    required this.remarks,
  });
}

class FetchingGateInwardEvent extends GateInwardRegisterEvent {}

class SaveEvent extends GateInwardRegisterEvent {}
