// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:equatable/equatable.dart';

class GoodsRecieptNoteModel extends Equatable {
  String? ftNumber;
  String? revNumber;
  DateTime? date;
  String? pageNumber;
  String? grnNumber;
  String? supplierName;
  String? supplierId;
  DateTime? grnDate;
  String? billNumber;
  DateTime? billDate;
  String? slNumber;
  String? materialDescription;
  String? itemId;
  int? orderQty;
  int? recievedQty;
  int? acceptedQty;
  String? inspectionDetails;
  String? IFRejectionDetails;
  String? remarks;
  GoodsRecieptNoteModel(
      {this.ftNumber,
      this.revNumber,
      this.date,
      this.pageNumber,
      this.grnNumber,
      this.supplierName,
      this.supplierId,
      this.grnDate,
      this.billNumber,
      this.billDate,
      this.slNumber,
      this.materialDescription,
      this.itemId,
      this.orderQty,
      this.acceptedQty,
      this.inspectionDetails,
      this.IFRejectionDetails,
      this.remarks,
      this.recievedQty});

  GoodsRecieptNoteModel copyWith({
    String? ftNumber,
    String? revNumber,
    DateTime? date,
    String? pageNumber,
    String? grnNumber,
    String? supplierName,
    String? supplierId,
    DateTime? grnDate,
    String? billNumber,
    DateTime? billDate,
    String? slNumber,
    String? materialDescription,
    String? itemId,
    int? orderQty,
    int? acceptedQty,
    String? inspectionDetails,
    String? IFRejectionDetails,
    String? remarks,
    int? recievedQty,
  }) {
    return GoodsRecieptNoteModel(
        ftNumber: ftNumber ?? this.ftNumber,
        revNumber: revNumber ?? this.revNumber,
        date: date ?? this.date,
        pageNumber: pageNumber ?? this.pageNumber,
        grnNumber: grnNumber ?? this.grnNumber,
        supplierName: supplierName ?? this.supplierName,
        supplierId: supplierId ?? this.supplierId,
        grnDate: grnDate ?? this.grnDate,
        billNumber: billNumber ?? this.billNumber,
        billDate: billDate ?? this.billDate,
        slNumber: slNumber ?? this.slNumber,
        materialDescription: materialDescription ?? this.materialDescription,
        itemId: itemId ?? this.itemId,
        orderQty: orderQty ?? this.orderQty,
        acceptedQty: acceptedQty ?? this.acceptedQty,
        inspectionDetails: inspectionDetails ?? this.inspectionDetails,
        IFRejectionDetails: IFRejectionDetails ?? this.IFRejectionDetails,
        remarks: remarks ?? this.remarks,
        recievedQty: recievedQty ?? this.recievedQty);
  }

  @override
  List<Object?> get props => [
        ftNumber,
        revNumber,
        date,
        pageNumber,
        grnNumber,
        supplierName,
        supplierId,
        grnDate,
        billNumber,
        billDate,
        slNumber,
        materialDescription,
        itemId,
        orderQty,
        acceptedQty,
        inspectionDetails,
        IFRejectionDetails,
        recievedQty
      ];

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ftNumber': ftNumber,
      'revNumber': revNumber,
      'date': date?.millisecondsSinceEpoch,
      'pageNumber': pageNumber,
      'grnNumber': grnNumber,
      'supplierName': supplierName,
      'supplierId': supplierId,
      'grnDate': grnDate?.millisecondsSinceEpoch,
      'billNumber': billNumber,
      'billDate': billDate?.millisecondsSinceEpoch,
      'slNumber': slNumber,
      'materialDescription': materialDescription,
      'itemId': itemId,
      'orderQty': orderQty,
      'acceptedQty': acceptedQty,
      'inspectionDetails': inspectionDetails,
      'IFRejectionDetails': IFRejectionDetails,
      'remarks': remarks,
      'recievedQty': recievedQty
    };
  }

  factory GoodsRecieptNoteModel.fromMap(Map<String, dynamic> map) {
    return GoodsRecieptNoteModel(
      ftNumber: map['ftNumber'] != null ? map['ftNumber'] as String : null,
      revNumber: map['revNumber'] != null ? map['revNumber'] as String : null,
      date: map['date'] != null
          ? DateTime.fromMillisecondsSinceEpoch(map['date'] as int)
          : null,
      pageNumber:
          map['pageNumber'] != null ? map['pageNumber'] as String : null,
      grnNumber: map['grnNumber'] != null ? map['grnNumber'] as String : null,
      supplierName:
          map['supplierName'] != null ? map['supplierName'] as String : null,
      supplierId:
          map['supplierId'] != null ? map['supplierId'] as String : null,
      grnDate: map['grnDate'] != null
          ? DateTime.fromMillisecondsSinceEpoch(map['grnDate'] as int)
          : null,
      billNumber:
          map['billNumber'] != null ? map['billNumber'] as String : null,
      billDate: map['billDate'] != null
          ? DateTime.fromMillisecondsSinceEpoch(map['billDate'] as int)
          : null,
      slNumber: map['slNumber'] != null ? map['slNumber'] as String : null,
      materialDescription: map['materialDescription'] != null
          ? map['materialDescription'] as String
          : null,
      itemId: map['itemId'] != null ? map['itemId'] as String : null,
      recievedQty:
          map['recievedQty'] != null ? map['recievedQty'] as int : null,
      orderQty: map['orderQty'] != null ? map['orderQty'] as int : null,
      acceptedQty:
          map['acceptedQty'] != null ? map['acceptedQty'] as int : null,
      inspectionDetails: map['inspectionDetails'] != null
          ? map['inspectionDetails'] as String
          : null,
      IFRejectionDetails: map['IFRejectionDetails'] != null
          ? map['IFRejectionDetails'] as String
          : null,
      remarks: map['remarks'] != null ? map['remarks'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory GoodsRecieptNoteModel.fromJson(String source) =>
      GoodsRecieptNoteModel.fromMap(
          json.decode(source) as Map<String, dynamic>);
}
