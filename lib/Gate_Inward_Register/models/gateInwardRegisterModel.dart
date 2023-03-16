// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:equatable/equatable.dart';

class GateInwardRegisterModel extends Equatable {
  String? ftNumber;
  String? revNumber;
  DateTime? date;
  String? pageNumber;
  String? gateInwardNumber;
  DateTime? gateInwardDateTime;
  String? gatePassNumber;
  DateTime? gatePassDate;
  String? from;
  String? modeOfTransport;
  String? vehicleNumber;
  String? description;
  String? itemId;
  int? quantity;
  String? purpose;
  String? checkedBy;
  String? checkerId;
  String? returnableOrNonReturnable;
  String? remarks;
  GateInwardRegisterModel({
    this.ftNumber,
    this.revNumber,
    this.date,
    this.pageNumber,
    this.gateInwardNumber,
    this.gateInwardDateTime,
    this.gatePassNumber,
    this.gatePassDate,
    this.from,
    this.modeOfTransport,
    this.vehicleNumber,
    this.description,
    this.itemId,
    this.quantity,
    this.purpose,
    this.checkedBy,
    this.checkerId,
    this.returnableOrNonReturnable,
    this.remarks,
  });

  @override
  List<Object?> get props => [
        ftNumber,
        revNumber,
        date,
        pageNumber,
        gateInwardNumber,
        gateInwardDateTime,
        gatePassNumber,
        gatePassDate,
        from,
        modeOfTransport,
        vehicleNumber,
        description,
        itemId,
        quantity,
        purpose,
        checkedBy,
        checkerId,
        returnableOrNonReturnable,
        remarks
      ];

  GateInwardRegisterModel copyWith({
    String? ftNumber,
    String? revNumber,
    DateTime? date,
    String? pageNumber,
    String? gateInwardNumber,
    DateTime? gateInwardDateTime,
    String? gatePassNumber,
    DateTime? gatePassDate,
    String? from,
    String? modeOfTransport,
    String? vehicleNumber,
    String? description,
    String? itemId,
    int? quantity,
    String? purpose,
    String? checkedBy,
    String? checkerId,
    String? returnableOrNonReturnable,
    String? remarks,
  }) {
    return GateInwardRegisterModel(
      ftNumber: ftNumber ?? this.ftNumber,
      revNumber: revNumber ?? this.revNumber,
      date: date ?? this.date,
      pageNumber: pageNumber ?? this.pageNumber,
      gateInwardNumber: gateInwardNumber ?? this.gateInwardNumber,
      gateInwardDateTime: gateInwardDateTime ?? this.gateInwardDateTime,
      gatePassNumber: gatePassNumber ?? this.gatePassNumber,
      gatePassDate: gatePassDate ?? this.gatePassDate,
      from: from ?? this.from,
      modeOfTransport: modeOfTransport ?? this.modeOfTransport,
      vehicleNumber: vehicleNumber ?? this.vehicleNumber,
      description: description ?? this.description,
      itemId: itemId ?? this.itemId,
      quantity: quantity ?? this.quantity,
      purpose: purpose ?? this.purpose,
      checkedBy: checkedBy ?? this.checkedBy,
      checkerId: checkerId ?? this.checkerId,
      returnableOrNonReturnable:
          returnableOrNonReturnable ?? this.returnableOrNonReturnable,
      remarks: remarks ?? this.remarks,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ftNumber': ftNumber,
      'revNumber': revNumber,
      'date': date?.millisecondsSinceEpoch,
      'pageNumber': pageNumber,
      'gateInwardNumber': gateInwardNumber,
      'gateInwardDateTime': gateInwardDateTime?.millisecondsSinceEpoch,
      'gatePassNumber': gatePassNumber,
      'gpNumberDate': gatePassDate?.millisecondsSinceEpoch,
      'from': from,
      'modeOfTransport': modeOfTransport,
      'vehicleNumber': vehicleNumber,
      'description': description,
      'itemId': itemId,
      'quantity': quantity,
      'purpose': purpose,
      'checkedBy': checkedBy,
      'checkerId': checkerId,
      'returnableOrNonReturnable': returnableOrNonReturnable,
      'remarks': remarks,
    };
  }

  factory GateInwardRegisterModel.fromMap(Map<String, dynamic> map) {
    return GateInwardRegisterModel(
      ftNumber: map['ftNumber'] != null ? map['ftNumber'] as String : null,
      revNumber: map['revNumber'] != null ? map['revNumber'] as String : null,
      date: map['date'] != null
          ? DateTime.fromMillisecondsSinceEpoch(map['date'] as int)
          : null,
      pageNumber:
          map['pageNumber'] != null ? map['pageNumber'] as String : null,
      gateInwardNumber: map['gateInwardNumber'] != null
          ? map['gateInwardNumber'] as String
          : null,
      gateInwardDateTime: map['gateInwardDateTime'] != null
          ? DateTime.fromMillisecondsSinceEpoch(
              map['gateInwardDateTime'] as int)
          : null,
      gatePassNumber: map['gatePassNumber'] != null
          ? map['gatePassNumber'] as String
          : null,
      gatePassDate: map['gatePassDate'] != null
          ? DateTime.fromMillisecondsSinceEpoch(map['gatePassDate'] as int)
          : null,
      from: map['from'] != null ? map['from'] as String : null,
      modeOfTransport: map['modeOfTransport'] != null
          ? map['modeOfTransport'] as String
          : null,
      vehicleNumber:
          map['vehicleNumber'] != null ? map['vehicleNumber'] as String : null,
      description:
          map['description'] != null ? map['description'] as String : null,
      itemId: map['itemId'] != null ? map['itemId'] as String : null,
      quantity: map['quantity'] != null ? map['quantity'] as int : null,
      purpose: map['purpose'] != null ? map['purpose'] as String : null,
      checkedBy: map['checkedBy'] != null ? map['checkedBy'] as String : null,
      checkerId: map['checkerId'] != null ? map['checkerId'] as String : null,
      returnableOrNonReturnable: map['returnableOrNonReturnable'],
      remarks: map['remarks'] != null ? map['remarks'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory GateInwardRegisterModel.fromJson(String source) =>
      GateInwardRegisterModel.fromMap(
          json.decode(source) as Map<String, dynamic>);
}
