part of 'goods_reciept_note_bloc.dart';

class GoodsRecieptNoteEvent extends Equatable {
  const GoodsRecieptNoteEvent();

  @override
  List<Object> get props => [];
}

class FtNumberEvent extends GoodsRecieptNoteEvent {
  String ftNumber;
  FtNumberEvent({
    required this.ftNumber,
  });
}

class RevNumberEvent extends GoodsRecieptNoteEvent {
  String revNumber;
  RevNumberEvent({
    required this.revNumber,
  });
}

class MDateEvent extends GoodsRecieptNoteEvent {
  DateTime mDate;
  MDateEvent({
    required this.mDate,
  });
}

class PageNumberEvent extends GoodsRecieptNoteEvent {
  String pageNumber;
  PageNumberEvent({
    required this.pageNumber,
  });
}

class GrnNumberEvent extends GoodsRecieptNoteEvent {
  String grnNumber;
  GrnNumberEvent({
    required this.grnNumber,
  });
}

class SupplierNameEvent extends GoodsRecieptNoteEvent {
  String supplierName;
  SupplierNameEvent({
    required this.supplierName,
  });
}

class GrnDateEvent extends GoodsRecieptNoteEvent {
  DateTime grnDate;
  GrnDateEvent({
    required this.grnDate,
  });
}

class BillNumberEvent extends GoodsRecieptNoteEvent {
  String billNumber;
  BillNumberEvent({
    required this.billNumber,
  });
}

class billDateEvent extends GoodsRecieptNoteEvent {
  DateTime billDate;
  billDateEvent({
    required this.billDate,
  });
}

class SlNumberEvent extends GoodsRecieptNoteEvent {
  String slNumber;
  SlNumberEvent({
    required this.slNumber,
  });
}

class MaterialDescriotionEvent extends GoodsRecieptNoteEvent {
  String materialDescriotion;
  MaterialDescriotionEvent({
    required this.materialDescriotion,
  });
}

class OrderQtyEvent extends GoodsRecieptNoteEvent {
  int orderQty;
  OrderQtyEvent({
    required this.orderQty,
  });
}

class AcceptedQtyEvent extends GoodsRecieptNoteEvent {
  int acceptedQty;
  AcceptedQtyEvent({
    required this.acceptedQty,
  });
}

class InspectionDetailsEvent extends GoodsRecieptNoteEvent {
  String inspectionDetails;
  InspectionDetailsEvent({
    required this.inspectionDetails,
  });
}

class IFRejectionDetailsEvent extends GoodsRecieptNoteEvent {
  String ifrejectionDetails;
  IFRejectionDetailsEvent({
    required this.ifrejectionDetails,
  });
}

class RemarksEvent extends GoodsRecieptNoteEvent {
  String remarks;
  RemarksEvent({
    required this.remarks,
  });
}