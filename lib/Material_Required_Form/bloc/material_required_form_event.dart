part of 'material_required_form_bloc.dart';

abstract class MaterialRequiredFormEvent extends Equatable {
  const MaterialRequiredFormEvent();

  @override
  List<Object> get props => [];
}

class FtNumberEvent extends MaterialRequiredFormEvent {
  String ftNumber;
  FtNumberEvent({
    required this.ftNumber,
  });
}

class RevNumberEvent extends MaterialRequiredFormEvent {
  String revNumber;
  RevNumberEvent({
    required this.revNumber,
  });
}

class MDateEvent extends MaterialRequiredFormEvent {
  DateTime mDate;
  MDateEvent({
    required this.mDate,
  });
}

class PageNumberEvent extends MaterialRequiredFormEvent {
  String pageNumber;
  PageNumberEvent({
    required this.pageNumber,
  });
}

class PONumberEvent extends MaterialRequiredFormEvent {
  String poNumber;
  PONumberEvent({
    required this.poNumber,
  });
}

class PoSlNumberEvent extends MaterialRequiredFormEvent {
  String poSlNumber;
  PoSlNumberEvent({
    required this.poSlNumber,
  });
}

class CustomerNameEvent extends MaterialRequiredFormEvent {
  String customerName;
  String uid;

  CustomerNameEvent({
    required this.customerName,
    required this.uid,
  });
}

class MaterialrequiredDateEvent extends MaterialRequiredFormEvent {
  DateTime materialrequiredDate;
  MaterialrequiredDateEvent({
    required this.materialrequiredDate,
  });
}

class SlNumberEvent extends MaterialRequiredFormEvent {
  String slNumber;
  SlNumberEvent({
    required this.slNumber,
  });
}

class MaterialDescriptionEvent extends MaterialRequiredFormEvent {
  String materialDescription;
  String uid;
  MaterialDescriptionEvent({
    required this.materialDescription,
    required this.uid,
  });
}

class InHandEvent extends MaterialRequiredFormEvent {
  int inHand;
  InHandEvent({
    required this.inHand,
  });
}

class RequiredQuantityEvent extends MaterialRequiredFormEvent {
  int requiredQuantity;
  RequiredQuantityEvent({
    required this.requiredQuantity,
  });
}

class IssuedQuantityEvent extends MaterialRequiredFormEvent {
  int issuedQuantity;
  IssuedQuantityEvent({
    required this.issuedQuantity,
  });
}

class RemarksEvent extends MaterialRequiredFormEvent {
  String remarks;
  RemarksEvent({
    required this.remarks,
  });
}

class RequisitionedByEvent extends MaterialRequiredFormEvent {
  String requisitionedBy;
  String uid;
  RequisitionedByEvent({
    required this.requisitionedBy,
    required this.uid,
  });
}

class SkSignEvent extends MaterialRequiredFormEvent {
  String skSign;
  SkSignEvent({
    required this.skSign,
  });
}

class PeSignEvent extends MaterialRequiredFormEvent {
  String peSign;
  PeSignEvent({
    required this.peSign,
  });
}

class FetchingMaterialReqEvent extends MaterialRequiredFormEvent {}

class SaveEvent extends MaterialRequiredFormEvent {}
