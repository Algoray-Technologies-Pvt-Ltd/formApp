part of 'gate_outward_register_bloc.dart';

class GateOutwardRegisterEvent extends Equatable {
  const GateOutwardRegisterEvent();

  @override
  List<Object> get props => [];
}

class FtNumberEvent extends GateOutwardRegisterEvent {
  String ftNumber;
  FtNumberEvent({
    required this.ftNumber,
  });
}

class RevNumberEvent extends GateOutwardRegisterEvent {
  String revNumber;
  RevNumberEvent({
    required this.revNumber,
  });
}

class MDateEvent extends GateOutwardRegisterEvent {
  DateTime mDate;
  MDateEvent({
    required this.mDate,
  });
}

class PageNumberEvent extends GateOutwardRegisterEvent {
  String pageNumber;
  PageNumberEvent({
    required this.pageNumber,
  });
}

class GateOutwardNumberEvent extends GateOutwardRegisterEvent {
  String gateOutwardNumber;
  GateOutwardNumberEvent({
    required this.gateOutwardNumber,
  });
}

class GateOutwardDateTimeEvent extends GateOutwardRegisterEvent {
  DateTime gateOutwardDateTime;
  GateOutwardDateTimeEvent({
    required this.gateOutwardDateTime,
  });
}

class GatePassNumberEvent extends GateOutwardRegisterEvent {
  String gatePassNumber;
  GatePassNumberEvent({
    required this.gatePassNumber,
  });
}

class GatePassDateEvent extends GateOutwardRegisterEvent {
  DateTime gatePassDate;
  GatePassDateEvent({
    required this.gatePassDate,
  });
}

class ToEvent extends GateOutwardRegisterEvent {
  String to;
  ToEvent({
    required this.to,
  });
}

class ModeOfTransportEvent extends GateOutwardRegisterEvent {
  String modeOfTransport;
  ModeOfTransportEvent({
    required this.modeOfTransport,
  });
}

class VehicleNumberEvent extends GateOutwardRegisterEvent {
  String vehicleNumber;
  VehicleNumberEvent({
    required this.vehicleNumber,
  });
}

class DescriptionEvent extends GateOutwardRegisterEvent {
  String description;
  DescriptionEvent({
    required this.description,
  });
}

class QuantityEvent extends GateOutwardRegisterEvent {
  int quantity;
  QuantityEvent({
    required this.quantity,
  });
}

class PurposeEvent extends GateOutwardRegisterEvent {
  String purpose;
  PurposeEvent({
    required this.purpose,
  });
}

class SignatureEvent extends GateOutwardRegisterEvent {
  String signature;
  SignatureEvent({
    required this.signature,
  });
}

class ReturnableOrNonReturnableEvent extends GateOutwardRegisterEvent {
  bool returnableOrNonReturnable;
  ReturnableOrNonReturnableEvent({
    required this.returnableOrNonReturnable,
  });
}

class RemarksEvent extends GateOutwardRegisterEvent {
  String remarks;
  RemarksEvent({
    required this.remarks,
  });
}
