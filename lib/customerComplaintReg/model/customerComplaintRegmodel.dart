// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:equatable/equatable.dart';

import 'package:formapp/main.dart';

class CustomerComplaintReg extends Equatable {
  String? formName;
  String? ftNumber;
  String? revNumber;
  DateTime? date;
  int? siNumber;
  DateTime? ComplaintDate;
  AddressBook? address;
  String? NatureofComplaint;
  String? RootCause;
  String? CorrectiveAction;
  String? PreventiveAction;
  DateTime? ActionDate;
  bool? Informtocustomer;
  DateTime? InformDate;
  String? InformDetails;
  String? Remarks;
  CustomerComplaintReg({
    this.formName,
    this.ftNumber,
    this.revNumber,
    this.date,
    this.siNumber,
    this.ComplaintDate,
    this.address,
    this.NatureofComplaint,
    this.RootCause,
    this.CorrectiveAction,
    this.PreventiveAction,
    this.ActionDate,
    this.Informtocustomer,
    this.InformDate,
    this.InformDetails,
    this.Remarks,
  });

  @override
  List get props => [
        formName,
        ftNumber,
        revNumber,
        date,
        siNumber,
        ComplaintDate,
        address,
        NatureofComplaint,
        RootCause,
        CorrectiveAction,
        PreventiveAction,
        ActionDate,
        Informtocustomer,
        InformDate,
        InformDetails,
        Remarks,
      ];

  CustomerComplaintReg copyWith({
    String? formName,
    String? ftNumber,
    String? revNumber,
    DateTime? date,
    int? siNumber,
    DateTime? ComplaintDate,
    AddressBook? address,
    String? NatureofComplaint,
    String? RootCause,
    String? CorrectiveAction,
    String? PreventiveAction,
    DateTime? ActionDate,
    bool? Informtocustomer,
    DateTime? InformDate,
    String? InformDetails,
    String? Remarks,
  }) {
    return CustomerComplaintReg(
      formName: formName ?? this.formName,
      ftNumber: ftNumber ?? this.ftNumber,
      revNumber: revNumber ?? this.revNumber,
      date: date ?? this.date,
      siNumber: siNumber ?? this.siNumber,
      ComplaintDate: ComplaintDate ?? this.ComplaintDate,
      address: address ?? this.address,
      NatureofComplaint: NatureofComplaint ?? this.NatureofComplaint,
      RootCause: RootCause ?? this.RootCause,
      CorrectiveAction: CorrectiveAction ?? this.CorrectiveAction,
      PreventiveAction: PreventiveAction ?? this.PreventiveAction,
      ActionDate: ActionDate ?? this.ActionDate,
      Informtocustomer: Informtocustomer ?? this.Informtocustomer,
      InformDate: InformDate ?? this.InformDate,
      InformDetails: InformDetails ?? this.InformDetails,
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
      'ComplaintDate': ComplaintDate?.millisecondsSinceEpoch,
      'address': address,
      'NatureofComplaint': NatureofComplaint,
      'RootCause': RootCause,
      'CorrectiveAction': CorrectiveAction,
      'PreventiveAction': PreventiveAction,
      'ActionDate': ActionDate?.millisecondsSinceEpoch,
      'Informtocustomer': Informtocustomer,
      'InformDate': InformDate?.millisecondsSinceEpoch,
      'InformDetails': InformDetails,
      'Remarks': Remarks,
    };
  }

  factory CustomerComplaintReg.fromMap(Map<String, dynamic> map) {
    return CustomerComplaintReg(
      formName: map['formName'] != null ? map['formName'] as String : null,
      ftNumber: map['ftNumber'] != null ? map['ftNumber'] as String : null,
      revNumber: map['revNumber'] != null ? map['revNumber'] as String : null,
      date: map['date'] != null
          ? DateTime.fromMillisecondsSinceEpoch(map['date'] as int)
          : null,
      siNumber: map['siNumber'] != null ? map['siNumber'] as int : null,
      ComplaintDate: map['ComplaintDate'] != null
          ? DateTime.fromMillisecondsSinceEpoch(map['ComplaintDate'] as int)
          : null,
      address: map['address'],
      NatureofComplaint: map['NatureofComplaint'] != null
          ? map['NatureofComplaint'] as String
          : null,
      RootCause: map['RootCause'] != null ? map['RootCause'] as String : null,
      CorrectiveAction: map['CorrectiveAction'] != null
          ? map['CorrectiveAction'] as String
          : null,
      PreventiveAction: map['PreventiveAction'] != null
          ? map['PreventiveAction'] as String
          : null,
      ActionDate: map['ActionDate'] != null
          ? DateTime.fromMillisecondsSinceEpoch(map['ActionDate'] as int)
          : null,
      Informtocustomer: map['Informtocustomer'] != null
          ? map['Informtocustomer'] as bool
          : null,
      InformDate: map['InformDate'] != null
          ? DateTime.fromMillisecondsSinceEpoch(map['InformDate'] as int)
          : null,
      InformDetails:
          map['InformDetails'] != null ? map['InformDetails'] as String : null,
      Remarks: map['Remarks'] != null ? map['Remarks'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory CustomerComplaintReg.fromJson(String source) =>
      CustomerComplaintReg.fromMap(json.decode(source) as Map<String, dynamic>);
}
