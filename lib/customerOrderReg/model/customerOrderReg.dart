// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:equatable/equatable.dart';

class CustomerOrderReg extends Equatable {
  String? formName;
  String? ftNumber;
  String? revNumber;
  DateTime? date;
  int? siNumber;
  DateTime? OrderReceivedDate;
  int? QuoNumber;
  int? PurchaseOrderNo;
  DateTime? PurchaseOrderDate;
  String? CustomerName;
  String? DescriptionofJob;
  int? OrderQty;
  double? totalValue;
  double? Tax;
  DateTime? DelDueDate;
  int? QtySupplied;
  DateTime? DelDate;
  int? InvNo;
  DateTime? InvDate;
  DateTime? PaymentReceivedDate;
  String? CoordinatorName;
  String? Remarks;
  CustomerOrderReg({
    this.formName,
    this.ftNumber,
    this.revNumber,
    this.date,
    this.siNumber,
    this.OrderReceivedDate,
    this.QuoNumber,
    this.PurchaseOrderNo,
    this.PurchaseOrderDate,
    this.CustomerName,
    this.DescriptionofJob,
    this.OrderQty,
    this.totalValue,
    this.Tax,
    this.DelDueDate,
    this.QtySupplied,
    this.DelDate,
    this.InvNo,
    this.InvDate,
    this.PaymentReceivedDate,
    this.CoordinatorName,
    this.Remarks,
  });

  @override
  List get props => [
        formName,
        ftNumber,
        revNumber,
        date,
        siNumber,
        OrderReceivedDate,
        QuoNumber,
        PurchaseOrderNo,
        PurchaseOrderDate,
        CustomerName,
        DescriptionofJob,
        OrderQty,
        totalValue,
        Tax,
        DelDueDate,
        QtySupplied,
        DelDate,
        InvNo,
        InvDate,
        PaymentReceivedDate,
        CoordinatorName,
        Remarks,
      ];

  CustomerOrderReg copyWith({
    String? formName,
    String? ftNumber,
    String? revNumber,
    DateTime? date,
    int? siNumber,
    DateTime? OrderReceivedDate,
    int? QuoNumber,
    int? PurchaseOrderNo,
    DateTime? PurchaseOrderDate,
    String? CustomerName,
    String? DescriptionofJob,
    int? OrderQty,
    double? totalValue,
    double? Tax,
    DateTime? DelDueDate,
    int? QtySupplied,
    DateTime? DelDate,
    int? InvNo,
    DateTime? InvDate,
    DateTime? PaymentReceivedDate,
    String? CoordinatorName,
    String? Remarks,
  }) {
    return CustomerOrderReg(
      formName: formName ?? this.formName,
      ftNumber: ftNumber ?? this.ftNumber,
      revNumber: revNumber ?? this.revNumber,
      date: date ?? this.date,
      siNumber: siNumber ?? this.siNumber,
      OrderReceivedDate: OrderReceivedDate ?? this.OrderReceivedDate,
      QuoNumber: QuoNumber ?? this.QuoNumber,
      PurchaseOrderNo: PurchaseOrderNo ?? this.PurchaseOrderNo,
      PurchaseOrderDate: PurchaseOrderDate ?? this.PurchaseOrderDate,
      CustomerName: CustomerName ?? this.CustomerName,
      DescriptionofJob: DescriptionofJob ?? this.DescriptionofJob,
      OrderQty: OrderQty ?? this.OrderQty,
      totalValue: totalValue ?? this.totalValue,
      Tax: Tax ?? this.Tax,
      DelDueDate: DelDueDate ?? this.DelDueDate,
      QtySupplied: QtySupplied ?? this.QtySupplied,
      DelDate: DelDate ?? this.DelDate,
      InvNo: InvNo ?? this.InvNo,
      InvDate: InvDate ?? this.InvDate,
      PaymentReceivedDate: PaymentReceivedDate ?? this.PaymentReceivedDate,
      CoordinatorName: CoordinatorName ?? this.CoordinatorName,
      Remarks: Remarks ?? this.Remarks,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'formName': formName,
      'ftNumber': ftNumber,
      'revNumber': revNumber,
      'date': date?.millisecondsSinceEpoch,
      'siNumber': siNumber,
      'OrderReceivedDate': OrderReceivedDate?.millisecondsSinceEpoch,
      'QuoNumber': QuoNumber,
      'PurchaseOrderNo': PurchaseOrderNo,
      'PurchaseOrderDate': PurchaseOrderDate?.millisecondsSinceEpoch,
      'CustomerName': CustomerName,
      'DescriptionofJob': DescriptionofJob,
      'OrderQty': OrderQty,
      'totalValue': totalValue,
      'Tax': Tax,
      'DelDueDate': DelDueDate?.millisecondsSinceEpoch,
      'QtySupplied': QtySupplied,
      'DelDate': DelDate?.millisecondsSinceEpoch,
      'InvNo': InvNo,
      'InvDate': InvDate?.millisecondsSinceEpoch,
      'PaymentReceivedDate': PaymentReceivedDate?.millisecondsSinceEpoch,
      'CoordinatorName': CoordinatorName,
      'Remarks': Remarks,
    };
  }

  factory CustomerOrderReg.fromMap(Map<String, dynamic> map) {
    return CustomerOrderReg(
      formName: map['formName'] != null ? map['formName'] as String : null,
      ftNumber: map['ftNumber'] != null ? map['ftNumber'] as String : null,
      revNumber: map['revNumber'] != null ? map['revNumber'] as String : null,
      date: map['date'] != null
          ? DateTime.fromMillisecondsSinceEpoch(map['date'] as int)
          : null,
      siNumber: map['siNumber'] != null ? map['siNumber'] as int : null,
      OrderReceivedDate: map['OrderReceivedDate'] != null
          ? DateTime.fromMillisecondsSinceEpoch(map['OrderReceivedDate'] as int)
          : null,
      QuoNumber: map['QuoNumber'] != null ? map['QuoNumber'] as int : null,
      PurchaseOrderNo:
          map['PurchaseOrderNo'] != null ? map['PurchaseOrderNo'] as int : null,
      PurchaseOrderDate: map['PurchaseOrderDate'] != null
          ? DateTime.fromMillisecondsSinceEpoch(map['PurchaseOrderDate'] as int)
          : null,
      CustomerName:
          map['CustomerName'] != null ? map['CustomerName'] as String : null,
      DescriptionofJob: map['DescriptionofJob'] != null
          ? map['DescriptionofJob'] as String
          : null,
      OrderQty: map['OrderQty'] != null ? map['OrderQty'] as int : null,
      totalValue:
          map['totalValue'] != null ? map['totalValue'] as double : null,
      Tax: map['Tax'] != null ? map['Tax'] as double : null,
      DelDueDate: map['DelDueDate'] != null
          ? DateTime.fromMillisecondsSinceEpoch(map['DelDueDate'] as int)
          : null,
      QtySupplied:
          map['QtySupplied'] != null ? map['QtySupplied'] as int : null,
      DelDate: map['DelDate'] != null
          ? DateTime.fromMillisecondsSinceEpoch(map['DelDate'] as int)
          : null,
      InvNo: map['InvNo'] != null ? map['InvNo'] as int : null,
      InvDate: map['InvDate'] != null
          ? DateTime.fromMillisecondsSinceEpoch(map['InvDate'] as int)
          : null,
      PaymentReceivedDate: map['PaymentReceivedDate'],
      CoordinatorName: map['CoordinatorName'],
      Remarks: map['Remarks'] != null ? map['Remarks'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory CustomerOrderReg.fromJson(String source) =>
      CustomerOrderReg.fromMap(json.decode(source) as Map<String, dynamic>);
}
