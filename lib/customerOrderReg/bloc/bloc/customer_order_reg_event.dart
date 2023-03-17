part of 'customer_order_reg_bloc.dart';

abstract class CustomerOrderRegEvent extends Equatable {
  const CustomerOrderRegEvent();

  @override
  List<Object> get props => [];
}

class RemarksEvent extends CustomerOrderRegEvent {
  String Remarks;
  RemarksEvent({
    required this.Remarks,
  });
}

class FetchCEvent extends CustomerOrderRegEvent {}

class CoordinatorNameEvent extends CustomerOrderRegEvent {
  String CoordinatorName;
  String id;
  CoordinatorNameEvent({
    required this.id,
    required this.CoordinatorName,
  });
}

class PaymentReceivedDateEvent extends CustomerOrderRegEvent {
  DateTime date;
  PaymentReceivedDateEvent({
    required this.date,
  });
}

class InvDateEvent extends CustomerOrderRegEvent {
  DateTime date;
  InvDateEvent({
    required this.date,
  });
}

class InvNoEvent extends CustomerOrderRegEvent {
  int InvNo;
  InvNoEvent({
    required this.InvNo,
  });
}

class DelDateEvent extends CustomerOrderRegEvent {
  DateTime date;
  DelDateEvent({
    required this.date,
  });
}

class QtySuppliedEvent extends CustomerOrderRegEvent {
  int QtySupplied;
  QtySuppliedEvent({
    required this.QtySupplied,
  });
}

class DelDueDateEvent extends CustomerOrderRegEvent {
  DateTime DelDueDate;
  DelDueDateEvent({
    required this.DelDueDate,
  });
}

class TaxEvent extends CustomerOrderRegEvent {
  double Tax;
  TaxEvent({
    required this.Tax,
  });
}

class TotalValueEvent extends CustomerOrderRegEvent {
  double totalValue;
  TotalValueEvent({
    required this.totalValue,
  });
}

class RateEvent extends CustomerOrderRegEvent {
  int Rate;
  RateEvent({
    required this.Rate,
  });
}

class OrderQtyEvent extends CustomerOrderRegEvent {
  int OrderQty;
  OrderQtyEvent({
    required this.OrderQty,
  });
}

class DescriptionofJobEvent extends CustomerOrderRegEvent {
  String DescriptionofJob;
  String id;
  DescriptionofJobEvent({
    required this.id,
    required this.DescriptionofJob,
  });
}

class CustomerNameEvent extends CustomerOrderRegEvent {
  String CustomerName;
  String id;
  CustomerNameEvent({
    required this.CustomerName,
    required this.id,
  });
}

class PurchaseOrderDate extends CustomerOrderRegEvent {
  DateTime date;
  PurchaseOrderDate({
    required this.date,
  });
}

class PurchaseOrderNoEvent extends CustomerOrderRegEvent {
  int PurchaseOrderNo;
  PurchaseOrderNoEvent({
    required this.PurchaseOrderNo,
  });
}

class OrderReceivedDateEvent extends CustomerOrderRegEvent {
  DateTime OrderReceivedDate;
  OrderReceivedDateEvent({
    required this.OrderReceivedDate,
  });
}

class QuoDateEvent extends CustomerOrderRegEvent {
  DateTime QuoDate;
  QuoDateEvent({
    required this.QuoDate,
  });
}

class QuoNumberEvent extends CustomerOrderRegEvent {
  int QuoNumber;
  QuoNumberEvent({
    required this.QuoNumber,
  });
}

class SiNumberEvent extends CustomerOrderRegEvent {
  int siNumber;
  SiNumberEvent({
    required this.siNumber,
  });
}

class DateEvent extends CustomerOrderRegEvent {
  DateTime date;
  DateEvent({
    required this.date,
  });
}

class RevNumberEvent extends CustomerOrderRegEvent {
  String revNumber;
  RevNumberEvent({
    required this.revNumber,
  });
}

class FtNumberEvent extends CustomerOrderRegEvent {
  String ftNumber;
  FtNumberEvent({
    required this.ftNumber,
  });
}

class FormNameEvent extends CustomerOrderRegEvent {
  String formName;
  FormNameEvent({
    required this.formName,
  });
}

class SaveEvent extends CustomerOrderRegEvent {}
