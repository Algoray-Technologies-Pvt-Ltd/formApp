// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:equatable/equatable.dart';

class MaterialrequiredFormModel extends Equatable {
  String? ftNumber;
  String? revNumber;
  DateTime? date;
  String? pageNumber;
  String? PONumber;
  String? poSlNumber;
  String? customerName;
  DateTime? materialrequiredDate;
  String? slNumber;
  String? materialDescription;
  int? inHand;
  int? requiredQuantity;
  int? issuedQuantity;
  String? remarks;
  String? requisitionedBy;
  String? skSign;
  String? peSign;
  MaterialrequiredFormModel({
    this.ftNumber,
    this.revNumber,
    this.date,
    this.pageNumber,
    this.PONumber,
    this.poSlNumber,
    this.customerName,
    this.materialrequiredDate,
    this.slNumber,
    this.materialDescription,
    this.inHand,
    this.requiredQuantity,
    this.issuedQuantity,
    this.remarks,
    this.requisitionedBy,
    this.skSign,
    this.peSign,
  });

  @override
  List<Object?> get props => [
        ftNumber,
        revNumber,
        date,
        pageNumber,
        PONumber,
        poSlNumber,
        customerName,
        materialrequiredDate,
        slNumber,
        materialDescription,
        inHand,
        issuedQuantity,
        requiredQuantity,
        remarks,
        requisitionedBy,
        skSign,
        peSign
      ];

  MaterialrequiredFormModel copyWith({
    String? ftNumber,
    String? revNumber,
    DateTime? date,
    String? pageNumber,
    String? PONumber,
    String? poSlNumber,
    String? customerName,
    DateTime? materialrequiredDate,
    String? slNumber,
    String? materialDescription,
    int? inHand,
    int? requiredQuantity,
    int? issuedQuantity,
    String? remarks,
    String? requisitionedBy,
    String? skSign,
    String? peSign,
  }) {
    return MaterialrequiredFormModel(
      ftNumber: ftNumber ?? this.ftNumber,
      revNumber: revNumber ?? this.revNumber,
      date: date ?? this.date,
      pageNumber: pageNumber ?? this.pageNumber,
      PONumber: PONumber ?? this.PONumber,
      poSlNumber: poSlNumber ?? this.poSlNumber,
      customerName: customerName ?? this.customerName,
      materialrequiredDate: materialrequiredDate ?? this.materialrequiredDate,
      slNumber: slNumber ?? this.slNumber,
      materialDescription: materialDescription ?? this.materialDescription,
      inHand: inHand ?? this.inHand,
      requiredQuantity: requiredQuantity ?? this.requiredQuantity,
      issuedQuantity: issuedQuantity ?? this.issuedQuantity,
      remarks: remarks ?? this.remarks,
      requisitionedBy: requisitionedBy ?? this.requisitionedBy,
      skSign: skSign ?? this.skSign,
      peSign: peSign ?? this.peSign,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ftNumber': ftNumber,
      'revNumber': revNumber,
      'date': date?.millisecondsSinceEpoch,
      'pageNumber': pageNumber,
      'PONumber': PONumber,
      'poSlNumber': poSlNumber,
      'customerName': customerName,
      'materialrequiredDate': materialrequiredDate?.millisecondsSinceEpoch,
      'slNumber': slNumber,
      'materialDescription': materialDescription,
      'inHand': inHand,
      'requiredQuantity': requiredQuantity,
      'issuedQuantity': issuedQuantity,
      'remarks': remarks,
      'requisitionedBy': requisitionedBy,
      'skSign': skSign,
      'peSign': peSign,
    };
  }

  factory MaterialrequiredFormModel.fromMap(Map<String, dynamic> map) {
    return MaterialrequiredFormModel(
      ftNumber: map['ftNumber'] != null ? map['ftNumber'] as String : null,
      revNumber: map['revNumber'] != null ? map['revNumber'] as String : null,
      date: map['date'] != null
          ? DateTime.fromMillisecondsSinceEpoch(map['date'] as int)
          : null,
      pageNumber:
          map['pageNumber'] != null ? map['pageNumber'] as String : null,
      PONumber: map['PONumber'] != null ? map['PONumber'] as String : null,
      poSlNumber:
          map['poSlNumber'] != null ? map['poSlNumber'] as String : null,
      customerName:
          map['customerName'] != null ? map['customerName'] as String : null,
      materialrequiredDate: map['materialrequiredDate'] != null
          ? DateTime.fromMillisecondsSinceEpoch(
              map['materialrequiredDate'] as int)
          : null,
      slNumber: map['slNumber'] != null ? map['slNumber'] as String : null,
      materialDescription: map['materialDescription'] != null
          ? map['materialDescription'] as String
          : null,
      inHand: map['inHand'] != null ? map['inHand'] as int : null,
      requiredQuantity: map['requiredQuantity'] != null
          ? map['requiredQuantity'] as int
          : null,
      issuedQuantity:
          map['issuedQuantity'] != null ? map['issuedQuantity'] as int : null,
      remarks: map['remarks'] != null ? map['remarks'] as String : null,
      requisitionedBy: map['requisitionedBy'] != null
          ? map['requisitionedBy'] as String
          : null,
      skSign: map['skSign'] != null ? map['skSign'] as String : null,
      peSign: map['peSign'] != null ? map['peSign'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory MaterialrequiredFormModel.fromJson(String source) =>
      MaterialrequiredFormModel.fromMap(
          json.decode(source) as Map<String, dynamic>);
}
