// ignore_for_file: public_member_api_docs, sort_construcgateOutwardNumbertors_first
import 'dart:convert';

import 'package:equatable/equatable.dart';

class GateOutWardRegisterModel extends Equatable {
  String? ftNumber;
  String? revNumber;
  DateTime? date;
  String? pageNumber;
  String? gateOutwardNumber;
  DateTime? gateOutwardDateTime;
  String? gatePassNumber;
  DateTime? gatePassDate;
  String? to;
  String? modeOfTransport;
  String? vehicleNumber;
  String? description;
  int? quantity;
  String? purpose;
  String? signature;
  String? returnableOrNonReturnable;
  String? remarks;
  GateOutWardRegisterModel({
    this.ftNumber,
    this.revNumber,
    this.date,
    this.pageNumber,
    this.gateOutwardNumber,
    this.gateOutwardDateTime,
    this.gatePassNumber,
    this.gatePassDate,
    this.to,
    this.modeOfTransport,
    this.vehicleNumber,
    this.description,
    this.quantity,
    this.purpose,
    this.signature,
    this.returnableOrNonReturnable,
    this.remarks,
  });

  @override
  List<Object?> get props => [
        ftNumber,
        revNumber,
        date,
        pageNumber,
        gateOutwardNumber,
        gateOutwardDateTime,
        gatePassNumber,
        gatePassDate,
        to,
        modeOfTransport,
        vehicleNumber,
        description,
        quantity,
        purpose,
        signature,
        returnableOrNonReturnable,
        remarks
      ];

  GateOutWardRegisterModel copyWith({
    String? ftNumber,
    String? revNumber,
    DateTime? date,
    String? pageNumber,
    String? gateOutwardNumber,
    DateTime? gateOutwardDateTime,
    String? gatePassNumber,
    DateTime? gatePassDate,
    String? to,
    String? modeOfTransport,
    String? vehicleNumber,
    String? description,
    int? quantity,
    String? purpose,
    String? signature,
    String? returnableOrNonReturnable,
    String? remarks,
  }) {
    return GateOutWardRegisterModel(
      ftNumber: ftNumber ?? this.ftNumber,
      revNumber: revNumber ?? this.revNumber,
      date: date ?? this.date,
      pageNumber: pageNumber ?? this.pageNumber,
      gateOutwardNumber: gateOutwardNumber ?? this.gateOutwardNumber,
      gateOutwardDateTime: gateOutwardDateTime ?? this.gateOutwardDateTime,
      gatePassNumber: gatePassNumber ?? this.gatePassNumber,
      gatePassDate: gatePassDate ?? this.gatePassDate,
      to: to ?? this.to,
      modeOfTransport: modeOfTransport ?? this.modeOfTransport,
      vehicleNumber: vehicleNumber ?? this.vehicleNumber,
      description: description ?? this.description,
      quantity: quantity ?? this.quantity,
      purpose: purpose ?? this.purpose,
      signature: signature ?? this.signature,
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
      'gateOutwardNumber': gateOutwardNumber,
      'gateOutwardDateTime': gateOutwardDateTime?.millisecondsSinceEpoch,
      'gatePassNumber': gatePassNumber,
      'gpNumberDate': gatePassDate?.millisecondsSinceEpoch,
      'to': to,
      'modeOfTransport': modeOfTransport,
      'vehicleNumber': vehicleNumber,
      'description': description,
      'quantity': quantity,
      'purpose': purpose,
      'signature': signature,
      'returnableOrNonReturnable': returnableOrNonReturnable,
      'remarks': remarks,
    };
  }

  factory GateOutWardRegisterModel.fromMap(Map<String, dynamic> map) {
    return GateOutWardRegisterModel(
      ftNumber: map['ftNumber'] != null ? map['ftNumber'] as String : null,
      revNumber: map['revNumber'] != null ? map['revNumber'] as String : null,
      date: map['date'] != null
          ? DateTime.fromMillisecondsSinceEpoch(map['date'] as int)
          : null,
      pageNumber:
          map['pageNumber'] != null ? map['pageNumber'] as String : null,
      gateOutwardNumber: map['gateOutwardNumber'] != null
          ? map['gateOutwardNumber'] as String
          : null,
      gateOutwardDateTime: map['gateOutwardDateTime'] != null
          ? DateTime.fromMillisecondsSinceEpoch(
              map['gateOutwardDateTime'] as int)
          : null,
      gatePassNumber: map['gatePassNumber'] != null
          ? map['gatePassNumber'] as String
          : null,
      gatePassDate: map['gatePassDate'] != null
          ? DateTime.fromMillisecondsSinceEpoch(map['gatePassDate'] as int)
          : null,
      to: map['to'] != null ? map['to'] as String : null,
      modeOfTransport: map['modeOfTransport'] != null
          ? map['modeOfTransport'] as String
          : null,
      vehicleNumber:
          map['vehicleNumber'] != null ? map['vehicleNumber'] as String : null,
      description:
          map['description'] != null ? map['description'] as String : null,
      quantity: map['quantity'] != null ? map['quantity'] as int : null,
      purpose: map['purpose'] != null ? map['purpose'] as String : null,
      signature: map['signature'] != null ? map['signature'] as String : null,
      returnableOrNonReturnable: map['returnableOrNonReturnable'],
      remarks: map['remarks'] != null ? map['remarks'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory GateOutWardRegisterModel.fromJson(String source) =>
      GateOutWardRegisterModel.fromMap(
          json.decode(source) as Map<String, dynamic>);
}
